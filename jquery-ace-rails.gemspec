# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-ace-rails/version'

Gem::Specification.new do |gem|
  gem.name         = "jquery-ace-rails"
  gem.version      = JqueryAceRails::VERSION
  gem.authors      = ["Ivan Garmatenko"]
  gem.email        = ["cheef.che@gmail.com"]
  gem.description  = %q{jQuery-ace rails integration}
  gem.summary      = %q{jQuery-ace rails integration}
  gem.homepage     = "https://github.com/cheef/jquery-ace-rails"

  gem.files        = Dir['README.md', 'MIT-LICENSE', 'lib/**/*', 'vendor/**/*']
  gem.require_path = "lib"
end
