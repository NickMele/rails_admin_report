$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_report/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_report"
  s.version     = RailsAdminReport::VERSION
  s.authors     = ["Nick Mele"]
  s.email       = ["nickmele26@gmail.com"]
  s.homepage    = "https://github.com/NickMele/rails_admin_report"
  s.summary     = "Report generation functionality for RailsAdmin"
  s.description = "Report generation functionality for RailsAdmin"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.6"
end
