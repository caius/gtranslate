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
# Lets just jump straight in with a few examples
# 

# Check if its a valid language
Google::Translate.valid_language?( "english" ) # => true

# Convert from english to french
fr = Google::Translate.english_to_french( "Hello" ) # => "Bonjour"

# And then french into german
de = Google::Translate.french_to_german( fr ) # => "Hallo"

# And finally back into english
en = Google::Translate.german_to_english( de ) # => "Hello"

#
# Whats that I hear you say? You don't like typing
# the full Google::Translate out each time?!
#
# Whinge not, Google::Tr does exactly the same.
#

# Check if its a valid language
Google::Tr.valid_language?( "english" ) # => true

# Convert from english to french
fr = Google::Tr.english_to_french( "Hello" ) # => "Bonjour"

# And then french into german
de = Google::Tr.french_to_german( fr ) # => "Hallo"

# And finally back into english
en = Google::Tr.german_to_english( de ) # => "Hello"

