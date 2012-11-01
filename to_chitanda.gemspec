# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_chitanda/version'

Gem::Specification.new do |gem|
  gem.name          = "to_chitanda"
  gem.version       = ToChitanda::VERSION
  gem.authors       = ["HORII Keima"]
  gem.email         = ["holysugar@gmail.com"]
  gem.description   = %q{Integer#to_chitanda}
  gem.summary       = %q{Integer#to_chitanda, from "Kotenbu" series}
  gem.homepage      = "https://github.com/holysugar/to_chitanda"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
