require 'rubygems'
require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'
require 'rspec'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "whiny_attr_accessible"
    gem.summary = %Q{Make attr_accessible and attr_protected throw exceptions in non-production mode}
    gem.description = %Q{Make attr_accessible and attr_protected throw exceptions in non-production mode, yo.}
    gem.email = "tamosunas@gmail.com"
    gem.homepage = "http://github.com/scotttam/whiny_attr_accessible"
    gem.authors = ["Scott J. Tamosunas"]
    gem.add_development_dependency "rspec", ">= 2.0.1"
    gem.add_development_dependency "mocha", ">= 0.9.9"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = FileList['spec/**/*_spec.rb']
  t.rcov = false
end

RSpec::Core::RakeTask.new(:spec_mongo_mapper) do |t|
  t.pattern = FileList['spec/mongo_mapper/**/*_spec.rb']
  t.rcov = false
end

RSpec::Core::RakeTask.new(:spec_active_record) do |t|
  t.pattern = FileList['spec/active_record/**/*_spec.rb']
  t.rcov = false
end

# task :spec => :check_dependencies
task :default => :spec