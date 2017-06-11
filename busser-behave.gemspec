# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'busser/behave/version'

Gem::Specification.new do |spec|
  spec.name          = 'busser-behave'
  spec.version       = Busser::Behave::VERSION
  spec.authors       = ['Srividya Raman']
  spec.email         = ['srividya.ramank@gmail.com']
  spec.description   = %q{A Busser runner plugin for Behave}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/srividya-raman/busser-behave.git'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'busser'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'aruba'

  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'countloc'
end
