require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Protected" do
  before(:each) do
    @foo = Protected.create!
  end
  
  it "should raise an exception when trying to set an attribute that's attr_protected" do
    lambda { @foo.update_attributes(:protected => "no") }.should raise_error(WhinyAttrAccessibleError)
  end
  
  it "should not raise an exception when setting an attribute that's not protected" do
    lambda { @foo.update_attributes(:unprotected => "yes") }.should_not raise_error(WhinyAttrAccessibleError)
  end
end
