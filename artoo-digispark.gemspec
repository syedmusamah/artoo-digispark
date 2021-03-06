# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "artoo-digispark/version"

Gem::Specification.new do |s|
  s.name        = "artoo-digispark"
  s.version     = Artoo::Digispark::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ron Evans"]
  s.email       = ["artoo@hybridgroup.com"]
  s.homepage    = "https://github.com/hybridgroup/artoo-digispark"
  s.summary     = %q{Artoo adaptor for Digispark}
  s.description = %q{Artoo adaptor for Digispark USB development board}
  s.license     = 'Apache 2.0'

  s.rubyforge_project = "artoo-digispark"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extensions    = ["ext/Rakefile"]

  s.add_runtime_dependency 'artoo', '>= 1.4.0'
  s.add_runtime_dependency 'artoo-gpio'
  s.add_runtime_dependency 'artoo-i2c'
  s.add_runtime_dependency 'littlewire', '>= 0.9.10'
  s.add_development_dependency 'minitest', '>= 5.0'
  s.add_development_dependency 'minitest-happy'
  s.add_development_dependency 'mocha', '>= 0.14.0'
end
