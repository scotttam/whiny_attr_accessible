require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "AttrAccessible" do
  before(:each) do
    @foo = Accessible.create!
  end
  
  it "should raise an exception when trying to set an attribute that's not attr_accessible" do
    lambda { @foo.update_attributes(:protected => "no") }.should raise_error(WhinyAttrAccessibleError)
  end
  
  it "should not raise an exception when setting an attribute that's accessible" do
    lambda { @foo.update_attributes(:unprotected => "yes") }.should_not raise_error(WhinyAttrAccessibleError)
  end
end
