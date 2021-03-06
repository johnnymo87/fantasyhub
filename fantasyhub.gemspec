# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fantasyhub/version'

Gem::Specification.new do |spec|
  spec.name          = "fantasyhub"
  spec.version       = Fantasyhub::VERSION
  spec.authors       = ["thatrubylove"]
  spec.email         = ["thatrubylove@gmail.com"]
  spec.summary       = %q{Business logic for #peepcode's challenge, the fantasy league of githubbers}
  spec.homepage      = "https://github.com/thatrubylove/fantasyhub"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "thincloud-test", "~> 1.0.0"
  spec.add_development_dependency "formatador"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "codeclimate-test-reporter"
end
