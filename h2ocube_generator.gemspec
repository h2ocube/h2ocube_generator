# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'h2ocube_generator'
  gem.version       = '0.0.1'
  gem.authors       = ['Ben']
  gem.email         = ['ben@h2ocube.com']
  gem.description   = %q{ H2ocube Generator is the base Rails application builder. }
  gem.summary       = %q{ H2ocube Generator is the base Rails application builder. }
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'rails', '>= 3.2'
  gem.add_dependency 'bundler', '>= 1.1'
end
