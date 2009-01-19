# GTranslate Readme

Library that wraps the Google Translate API. Translates a phrase from one language to another.

## Usage

Fairly simple to use. See `examples.rb` for full examples.

	Google::Translate.english_to_french( "Hello" ) # => "Bonjour"

You can use language detection too:

	Google::Translate.to_english( "Bonjour" ) # => "Hello"
