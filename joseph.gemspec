# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "joseph/version"

Gem::Specification.new do |s|
  s.name        = "joseph"
  s.version     = Joseph::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Martin Schuerrer"]
  s.email       = ["martin@schuerrer.org"]
  s.homepage    = "http://schuerrer.org"
  s.summary     = %q{Yet another take on application configuration}
  s.description = %q{Yet another take on application configuration}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency("rspec", ["~> 2.1.0"])
  s.add_development_dependency("rake", ["~> 0.8.7"])
  s.add_development_dependency("irb-rake-task", ["~> 1.0.0"])
end
