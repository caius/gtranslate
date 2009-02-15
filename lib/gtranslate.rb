GEM_ROOT = File.expand_path(File.dirname(__FILE__) + "/../")

require "yaml"
require "rubygems"
begin
  require "httparty"
rescue LoadError => e
  puts "You need to install the '#{e.message.scan(/-- (.*)$/).flatten.first}' gem."
  exit!
end


require GEM_ROOT + "/lib/gtranslate/gtranslate"
require GEM_ROOT + "/lib/gtranslate/exceptions"

module Google
end
