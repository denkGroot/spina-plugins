$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/search/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-search"
  s.version     = Spina::Search::VERSION
  s.authors     = ["Bram Jetten"]
  s.email       = ["bram@denkgroot.com"]
  s.homepage    = "http://www.denkgroot.com"
  s.summary     = "Search plugin for Spina"
  s.description = "Search pages using Spina Search"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
end
