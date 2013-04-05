# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amazon_isbn/version'

Gem::Specification.new do |spec|
  spec.name          = "amazon_isbn"
  spec.version       = AmazonIsbn::VERSION
  spec.authors       = ["Shinnosuke TAKEDA"]
  spec.email         = ["cnosuke@gmail.com"]
  spec.description   = %q{Get book's attributes from ISBN via Amazon Product Advertising API}
  spec.summary       = %q{This gem help you to get some attributes from ISBN code via Amazon Product Advertising API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "amazon-ecs"
end
