# frozen_string_literal: true

require_relative "lib/dq_slime_searcher/version"

Gem::Specification.new do |spec|
  spec.name          = "dq_slime_searcher"
  spec.version       = DqSlimeSearcher::VERSION
  spec.authors       = ["ryoo14"]
  spec.email         = ["anana12185@gmail.com"]

  spec.summary       = "Library to search for dragon quest slime"
  spec.homepage      = "https://github.com/ryoo14/dq_slime_searcher"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "nokogiri", "~> 1.12.4"
  spec.add_development_dependency "pry", "~> 0.13.0"
  spec.add_development_dependency "pry-doc", "~> 1.2.0"
  spec.add_development_dependency "pry-byebug", "~> 3.9.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
