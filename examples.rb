# 
#  gtranslate.rb
#  Part of GTranslate
# 
#  Google Translate API Wrapper
#  
#  Created by Caius Durling on 2009-01-04.
#  http://caius.name/ :: dev@caius.name
#  
#  Copyright 2009 Caius Durling
#  And Licensed under the LGPL v3
#
#  GTranslate is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Lesser General Public License as 
#  published by the Free Software Foundation, either version 3 of
#  the License, or (at your option) any later version.
#  
#  GTranslate is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU Lesser General Public
#  License along with GTranslate.  If not, see 
#  <http://www.gnu.org/licenses/>.
#

require "gtranslate"

# 
# Heres a few examples of just what it can do.
# 
# Also note that whereever a string as been passed in 
# for a language, you can pass a symbol as well.
# So :english instead of "english".
# 

# Convert from english to french
Google::Translate.english_to_french( "Hello" ) # => "Bonjour"

# And then french into german
Google::Translate.french_to_german( "Bonjour" ) # => "Hallo"

#
# Whats that I hear you say? You don't like typing
# the full Google::Translate out each time?!
#
# Whinge not, Google::Tr does exactly the same.
#

# Convert from english to french
Google::Tr.english_to_french( "Hello" ) # => "Bonjour"

# And then french into german
Google::Tr.french_to_german( "Bonjour" ) # => "Hallo"

#
# And you're still not happy with the amount of 
# typing its taking to translate your phrase
# you can always shorten the languages to their
# 2 letter codes.
#

# English -> French
Google::Tr.en_to_fr( "Hello" ) # => "Bonjour"

# And then french into german
Google::Tr.fr_to_de( "Bonjour" ) # => "Hallo"

# 
# You're complaning again now aren't you?
# I can hear you! You're asking how to find
# out the country codes, or check if a country
# code is valid.
# 
# Lucky for you there are a couple of methods to
# enable that as well.

# If you want the short code for a language
Google::Tr.lang_code( "english" ) # => "en"

# And to check if a language is valid?
Google::Tr.valid_lang?( "english" ) # => true

# Ooh look Polly, it also works with shortcodes
Google::Tr.valid_lang?( "en" ) # => true
