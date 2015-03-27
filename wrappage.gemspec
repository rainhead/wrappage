# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wrappage/version'

Gem::Specification.new do |spec|
  spec.name          = "wrappage"
  spec.version       = Wrappage::VERSION
  spec.authors       = ["Aaron Jensen"]
  spec.email         = ["aaronjensen@gmail.com"]
  spec.summary       = %q{Page objects for RSpec}
  spec.description   = %q{Page objects for RSpec}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
