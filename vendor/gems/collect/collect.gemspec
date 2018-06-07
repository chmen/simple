$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "collect/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "collect"
  s.version     = Collect::VERSION
  s.authors     = [""]
  s.email       = ["tony.potapog@gmail.com"]
  s.homepage    = "http://google.com"
  s.summary     = "Summary of Collect."
  s.description = "Description of Collect."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
