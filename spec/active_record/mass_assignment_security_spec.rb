require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class ArTest < ActiveRecord::Base
  attr_accessible :unprotected
end

describe "ActiveRecord AttrAccessible" do
  before(:all) do
    begin
      CreateModelForTesting.up
    rescue SQLite3::SQLException
      CreateModelForTesting.down
      CreateModelForTesting.up
    end
      
  end

  after(:all) do
    begin
      CreateModelForTesting.down
    rescue SQLite3::SQLException
    end
  end
  
  before(:each) do
    @ar_test = ArTest.create!
  end
  
  it "should raise an exception when trying to set an attribute that's not attr_accessible" do
    lambda { @ar_test.update_attributes(:protected => "no") }.should raise_error(WhinyAttrAccessibleError)
  end
  
  it "should not raise an exception when setting an attribute that's accessible" do
    lambda { @ar_test.update_attributes(:unprotected => "yes") }.should_not raise_error(WhinyAttrAccessibleError)
  end
end
