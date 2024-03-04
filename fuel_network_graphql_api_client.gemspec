# frozen_string_literal: true

require_relative "lib/fuel_network_graphql_api_client/version"

Gem::Specification.new do |spec|
  spec.name = "fuel_network_graphql_api_client"
  spec.version = FuelNetworkGraphqlApiClient::VERSION
  spec.authors = ["Jesse Cai"]
  spec.email = ["mojacc@gmail.com"]

  spec.summary = "A ruby client for the Fuel Network GraphQL API"
  spec.description = "A ruby client for the Fuel Network GraphQL API"
  spec.homepage = "https://github.com/jessecai33/fuel_network_graphql_api_client/README.md"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jessecai33/fuel_network_graphql_api_client"
  spec.metadata["changelog_uri"] = "https://github.com/jessecai33/fuel_network_graphql_api_client/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_dependency "graphql-client", "~> 0.20.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-shopify"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
