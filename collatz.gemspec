# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'collatz/version'

Gem::Specification.new do |spec|
  spec.name          = "collatz"
  spec.version       = Collatz::VERSION
  spec.authors       = ["bergren2"]
  spec.email         = ["dan@heymrbass.com"]
  spec.summary       = %q{Ruby gem for playing around with Collatz numbers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
