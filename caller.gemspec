lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caller/version'

Gem::Specification.new do |spec|
  spec.name          = 'caller'
  spec.version       = Caller::VERSION
  spec.authors       = ['Kirill Shevchenko']
  spec.email         = ['hello@kirillshevch.com']

  spec.summary       = '.call(*args) => #new(*args).call'
  spec.description   = 'Initialize class instance with .call method'
  spec.homepage      = 'https://github.com/kirillshevch/caller'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'byebug'
end
