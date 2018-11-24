# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pure-css-rails/version"

Gem::Specification.new do |gem|
  gem.name          = "pure-css-rails"
  gem.version       = PureCSS::Rails::VERSION
  gem.authors       = ["Balazs Kutil"]
  gem.email         = ["balazs@kutilovi.cz"]
  gem.description   = %q{Pure CSS for Rails Asset Pipeline}
  gem.license       = 'MIT'
  gem.summary       = %q{Pure CSS for Rails Asset Pipeline}
  gem.homepage      = "https://github.com/bkutil/pure-css-rails"
  gem.signing_key   = '/home/balazs/documents/keys/gem-private_key.pem'
  gem.cert_chain    = ['bkutil.pem']

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]
end
