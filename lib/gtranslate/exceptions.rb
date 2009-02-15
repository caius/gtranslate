module Google
  module Translate

    class NoPhrasePassed < Exception
    end
    
    class InvalidLanguage < Exception
    end
    
    class LanguageDetectionFailed < Exception
    end

  end
end