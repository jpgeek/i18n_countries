# frozen_string_literal: true

require_relative "lib/i18n_countries"
require_relative "lib/i18n_countries/version"

Gem::Specification.new do |spec|
  spec.name = "i18n_countries"
  spec.version = I18nCountries::VERSION
  spec.authors = ["Steve Brown"]
  spec.email = ["steve@zergsoft.com"]

  spec.summary = "Generate a hash of multilingual country names."
  spec.description = "Generates a hash of mulitilingual country names for 628 locales."
  spec.homepage = "https://github.com/jpgeek/i18n_countries"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  #spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + '/CHANGES'

  # Specify which files should be added to the gem when it is released.  The
  # `git ls-files -z` loads the files in the RubyGem that have been added into
  # git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  
  spec.add_development_dependency "byebug"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
