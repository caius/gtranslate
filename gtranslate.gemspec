# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gtranslate}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Caius Durling"]
  s.date = %q{2009-02-15}
  s.description = %q{GTranslate uses the Google translate API to translate a phrase from one language to another.}
  s.email = %q{dev@caius.name}
  s.extra_rdoc_files = ["lib/gtranslate/exceptions.rb", "lib/gtranslate/gtranslate.rb", "lib/gtranslate/mixins.rb", "lib/gtranslate.rb", "tasks/rspec.rake"]
  s.files = ["Changelog.md", "data/languages.yml", "gtranslate.gemspec", "lib/gtranslate/exceptions.rb", "lib/gtranslate/gtranslate.rb", "lib/gtranslate/mixins.rb", "lib/gtranslate.rb", "Manifest", "Rakefile", "Readme.md", "spec/array_mixin_spec.rb", "spec/gtranslate_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/string_mixin_spec.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/caius/gtranslate}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Gtranslate", "--main", "Readme.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{gtranslate}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Translates a phrase from one language to another}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end
