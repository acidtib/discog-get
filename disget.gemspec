# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'disget/version'

Gem::Specification.new do |spec|
  spec.name          = "discog-get"
  spec.version       = Disget::VERSION
  spec.authors       = ["Dainel Vera"]
  spec.email         = ["arubinofaux@gmail.com"]

  spec.summary       = %q{Download mp3's from a discog release id.}
  spec.description   = %q{Download mp3's from a discog release id.}
  spec.homepage      = "https://github.com/arubinofaux/discog-get"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = ["disget"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "discogs-wrapper", "~> 2.1"
  spec.add_runtime_dependency "activesupport", "~> 5.0"
  spec.add_runtime_dependency "nokogiri", "~> 1.6"
  spec.add_runtime_dependency "httparty", "~> 0.14"
end
