# 
#  gtranslate.rb
#  Part of GTranslate
# 
#  Google Translate API Wrapper
#  Version 0.6
#  
#  Created by Caius Durling on 2009-01-04.
#  http://caius.name/ :: dev@caius.name
# 
#  Modified by James Rose on 2009-01-15 
# 
#  Copyright 2009 Caius Durling
#  And Licensed under the LGPL v3
#
#  GTranslate is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Lesser General Public License as 
#  published by the Free Software Foundation, either version 3 of
#  the License, or (at your option) any later version.
#   # !> method redefined; discarding old path=
#  GTranslate is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU Lesser General Public
#  License along with GTranslate.  If not, see 
#  <http://www.gnu.org/licenses/>.
#

require "rubygems"
require "httparty"
require "yaml"

module Google
  class Translate
    # Some custom exceptions
    class InvalidLanguage < Exception; end
    class NoPhrasePassed < Exception; end
    # Load the lanuages in from DATA
    LANGS = YAML.load_file((File.dirname(__FILE__) + "/languages.yml"))

    # Setup HTTParty stuff
    include HTTParty
    base_uri "http://ajax.googleapis.com/ajax/services/language/translate"
    default_params :v => "1.0"
    format :json
    
    def self.method_missing(method, *args)
      
      if find = method.to_s.match(/(\w+?)?_?to_(\w+)/)
        find = find.captures

        find.map! {|l| l.to_sym if l != nil }.each do |l|
          raise InvalidLanguage, "#{l} isn't a supported language. Sorry!" unless l == nil || valid_lang?(l)
        end
        
        raise NoPhrasePassed, "Pass a phrase to translate" if args.nil? || args.blank? || args.first.empty?
        
        if find.first.nil?
          from = get('http://ajax.googleapis.com/ajax/services/language/detect', :query => {
            :q => args.first,
            :v => "1.0"
          })["responseData"]["language"]
        else
          from = find.first
        end
        
        get_translation :from => LANGS[from], :to => LANGS[find.last], :phrase => args.first
        
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
