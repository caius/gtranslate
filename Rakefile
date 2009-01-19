require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('gtranslate', '0.0.0') do | config | 
  config.description = ''
  config.url = 'http://github.com/caius/gtranslate'
  config.author = 'Caius Durling'
  config.email = 'dev@caius.name'
  config.ignore_pattern = ['tmp/*', 'script/*']
  config.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each do | rake_file | 
  load rake_file
end