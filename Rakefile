require 'rubygems'
require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'
require 'rspec'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "whiny_attr_accessible"
    gem.summary = %Q{TODO: one-line summary of your gem}
    gem.description = %Q{TODO: longer description of your gem}
    gem.email = "tamosunas@gmail.com"
    gem.homepage = "http://github.com/scotttam/whiny_attr_accessible"
    gem.authors = ["Scott J. Tamosunas"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
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

# task :spec => :check_dependencies
task :default => :spec