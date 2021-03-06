# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'asearch'

Gem::Specification.new do |spec|
  spec.name          = "asearch"
  spec.version       = Asearch::VERSION
  spec.authors       = ["Toshiyuki Masui"]
  spec.email         = ["masui@pitecan.com"]

  spec.summary       = %q{Approximate pat match.}
  spec.description   = %q{Approximate pat match.}
  spec.homepage      = "http://github.com/masui/asearch_ruby."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
