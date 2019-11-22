# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/td_ameritrade/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-td-ameritrade"
  spec.version       = Omniauth::TdAmeritrade::VERSION
  spec.authors       = ["Gary Teh"]
  spec.email         = ["garyjob@gmail.com"]
  spec.summary       = %q{A TD Ameritrade OAuth2 strategy for OmniAuth 1.x}
  spec.description   = %q{A TD Ameritrade OAuth2 strategy for OmniAuth 1.x. This allows you to login to Google with your ruby app.}
  spec.homepage      = "https://github.com/garyjob/omniauth-td-ameritrade"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth', '>= 1.1.1'
  spec.add_runtime_dependency 'omniauth-oauth2', '>= 1.5'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
