module Google
  # 
  # Call a method of the following type:
  #   {language from}_to_{language to}
  # 
  # Or to have the language from automagically detected:
  #   to_{language to}
  # 
  # Eg:
  #   english_to_french
  #   to_french
  # 
  module Translate
    # Loads the lanuages in from a data file
    LANGS = YAML.load_file(GEM_ROOT + "/data/languages.yml")

    # Setup HTTParty stuff
    include HTTParty
    base_uri "http://ajax.googleapis.com/ajax/services/language/translate"
    default_params :v => "1.0", :hl => "en"
    format :json
    
    # Does the magic to figure out if its a valid call or not
    def self.method_missing(method, *args)
      # TODO: cache methods once they are called once
      if find = method.to_s.match(/(\w+?)?_?to_(\w+)/)
        # Grab the captures
        langs = find.captures
        
        # Figure out if each language is a valid one
        # if the first one is nil, let it pass
        langs.each_with_index do |lang, i|
          raise InvalidLanguage, "#{lang}" unless (lang.nil? && i == 0) || valid_lang?(lang)
        end
        
        # Make sure the phrase is passed in
        raise NoPhrasePassed, "Pass a phrase to translate" if args.nil? || args.blank? || args.first.empty?
        
        # Figure out what the from language should be
        from = (langs.first.nil? ? "" : LANGS[langs.first])
                
        # And fetch/return the actual translation!
        get_translation :from => from, :to => LANGS[langs.last.to_sym], :phrase => args.first
      else
        super
      end
    end
    
    # Takes a string or symbol and returns BOOL
    def self.valid_lang? lang
      LANGS.key? lang.to_sym
    end

    # Returns the short code for the language name
    def self.lang_code lang
      LANGS[lang.to_sym]
    end
    
    private

    # Actually does the heavy lifting
    def self.get_translation opts = {}
      lang_pair = {:langpair => "#{opts[:from]}|#{opts[:to]}"}
      get('', :query => {:q => opts[:phrase]}.merge(lang_pair))["responseData"]["translatedText"]
    end
  end
  
  # And add Tr for anyone lazy
  const_set "Tr", Translate
end
