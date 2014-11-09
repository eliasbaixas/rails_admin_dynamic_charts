$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails_admin_dynamic_charts/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rails_admin_dynamic_charts'
  s.version     =  RailsAdminDynamicCharts::VERSION
  s.authors     = ['Miguel Sancho']
  s.email       = %w(sanchojaf@gmail.com)
  s.homepage    = 'https://github.com/openjaf/rails_admin_dynamic_charts'
  s.summary     = 'Charts for Rails Admin'
  s.description = 'HighCharts for Rails Admin'

  s.files = Dir['{app,config,db,lib}/**/*'] + %w(MIT-LICENSE Rakefile README.md)

  s.add_dependency 'rails', '>= 3.2'
  s.add_dependency 'rails_admin', '> 0'
  s.add_dependency 'chartkick', '> 0'
  s.license = 'MIT'
end
