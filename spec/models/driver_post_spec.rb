require 'spec_helper'

describe DriverPost do
  before(:all) do
    @user = User.create!(:name => "Test User", :email => "mail@foo.com", :password => 'password', :password_confirmation => 'password')
  end

  before(:each) do
    @valid_attributes = {
      :poster_id => @user.id,
      :title => "My Cool Title",
      :origin => "Columbus",
      :message => "Suck it."
    }
  end

  it "should create a new instance given valid attributes" do
    DriverPost.create!(@valid_attributes)
  end

  it "should have a driver" do
    dp = DriverPost.new(@valid_attributes)
    dp.driver.should_not be_nil
  end

  it "should have a its poster as its driver" do
    dp = DriverPost.create(@valid_attributes)
    dp.driver.should == dp.poster
  end

  after(:all) do
    User.delete_all
  end
end
