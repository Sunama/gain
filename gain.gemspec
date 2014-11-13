# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gain/version'

Gem::Specification.new do |spec|
  spec.name          = "gain"
  spec.version       = Gain::VERSION
  spec.authors       = ["Sukit Sunama"]
  spec.email         = ["sunama.sukrit@gmail.com"]
  spec.summary       = %q{Simple printed progress style for ruby.}
  spec.description   = %q{Simple printed progress style for ruby.}
  spec.homepage      = "https://github.com/Sunama/gain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
