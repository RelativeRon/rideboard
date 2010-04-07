require 'spec_helper'

describe DriverPost do

  it "should create a new instance given valid attributes" do
    Factory(:driver_post).should_not be_a_new_record
  end

  it "should have a driver" do
    DriverPost.new.should respond_to(:driver)
  end

  it "should have its poster as its driver" do
    user = User.new
    post = DriverPost.new(:poster => user)
    post.driver.should == user
  end
end
