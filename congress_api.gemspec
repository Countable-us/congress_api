# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'congress_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'congress_api'
  spec.version       = CongressApi::VERSION
  spec.authors       = ['Richard Lister']
  spec.email         = ['rlister@gmail.com']

  spec.summary       = %q{Wrapper for ProPublica Congress API.}
  spec.description   = %q{Simple API wrapper for https://propublica.github.io/congress-api-docs/#congress-api-documentation.}
  spec.homepage      = 'https://github.com/rlister/congress_api'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency('httparty')
  spec.add_dependency('hashie')
end