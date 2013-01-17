# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'guard/minify/version'

Gem::Specification.new do |s|
  s.name        = "guard-minify"
  s.version     = Guard::MinifyVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Simon Gate"]
  s.email       = ["simon@smgt.me"]
  s.homepage    = "http://smgt.me"
  s.summary     = %q{Minify javascript and css with guard}
  s.description = %q{Minify javascript and css with guard}

  s.add_dependency 'guard', '>= 0.2.2'
  s.add_development_dependency "uglifier"
  s.add_development_dependency "closure-compiler"
  s.add_development_dependency "rspec"
  s.test_files = s.files.select {|path| path =~ /^spec\/.*_spec.rb/}
  
  s.files        = Dir.glob('{lib}/**/*') #+ %w[LICENSE README.rdoc]
  s.require_path = 'lib'
end
