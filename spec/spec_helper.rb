$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'benchmark'

begin
  require 'mongo_mapper'
  require 'spec_helpers/mongo_mapper_spec_helper'
rescue Exception
  #puts "NOT LOADING MM"
end

begin
  require 'rails/all'
  require 'spec_helpers/active_record_spec_helper'
rescue Exception => e
  #puts "NOT LOADING AR #{e}"
end

require 'rspec'
require 'whiny_attr_accessible'

Rspec.configure do |config|
  config.mock_with :mocha
end

