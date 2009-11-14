require 'spec_helper'

describe DriverPost do

  it "should create a new instance given valid attributes" do
    Factory.build(:driver_post)
  end

  it "should have a driver" do
    Factory.build(:driver_post).driver.should_not be_nil
  end

  it "should have a its poster as its driver" do
    dp = Factory.build(:driver_post)
    dp.driver.should == dp.poster
  end
  
  it "should have a type of poster" do
    pending
  end

  after(:all) do
    User.delete_all
  end
end
