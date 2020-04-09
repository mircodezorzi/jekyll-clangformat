# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-clangformat/version"

Gem::Specification.new do |spec|
  spec.version       = Jekyll::ClangFormat::VERSION
  spec.name          = "jekyll-clangformat"
  spec.summary       = "Format code with clang-format"
  spec.authors       = ["Mircor De Zorzi"]
  spec.email         = ["mircodezorzi@protonmail.com"]
  spec.homepage      = "https://github.com/mircodezorzi/jekyll-clangformat"
  spec.licenses      = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test)/!) }
  spec.require_paths = ["lib"]
  spec.add_dependency "jekyll", "~> 3.0"
end
