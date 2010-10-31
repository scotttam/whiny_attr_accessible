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

