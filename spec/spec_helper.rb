$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'mongo_mapper'
require 'rspec'

require 'whiny_attr_accessible'

Rspec.configure do |config|
  config.mock_with :mocha
end

config = {
    'test' => {'host' => 'localhost', 'port' => 27017, 'database' => 'mongoa_test'},
}

MongoMapper.config = config
MongoMapper.connect("test")

class Accessible
  include MongoMapper::Document

  attr_accessible :unprotected
  
  key :unprotected, String
  key :protected, String
end

class Protected
  include MongoMapper::Document

  attr_protected :protected
  
  key :unprotected, String
  key :protected, String
end
