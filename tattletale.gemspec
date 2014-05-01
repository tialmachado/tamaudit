$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tattletale/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tattletale"
  s.version     = Tattletale::VERSION
  s.authors     = ["Tiago Machado"]
  s.email       = ["tiago@tamworks.com"]
  s.homepage    = "http://github.com/tiagotam/tattletale"
  s.summary     = "Auditable Rails Engine."
  s.description = "Audit activerecord models like a boss"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency "request_store"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency "shoulda-matchers", "~>1.0"#, "~> 3.0"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "capybara"
end
