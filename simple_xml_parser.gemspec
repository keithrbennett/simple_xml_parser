require_relative 'lib/simple_xml_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_xml_parser"
  spec.version       = SimpleXmlParser::VERSION
  spec.authors       = ["Keith Bennett"]
  spec.email         = ["keithrbennett@gmail.com"]

  spec.summary       = %q{Parses simple (record array) XML text.}
  spec.description   = %q{Parses XML containing an array of records into an array of Ruby hashes.}
  spec.homepage      = "https://github.com/keithrbennett/simple_xml_parser"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata['allowed_push_host'] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(lib|test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~>1.10"
  spec.add_dependency "pry", "~> 0.12"
  spec.add_dependency "awesome_print", "~> 1.8"
end
