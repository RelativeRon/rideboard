require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Post do

  context 'associations' do
    describe 'poster' do
      it "is a user instance" do
        Factory(:post).poster.should be_a_kind_of(User)
      end
    end
  end

  context "validation" do
    let(:post) { Factory.build(:post) }
    it "requires a poster" do
      post.poster = nil
      post.should_not be_valid
      post.errors.on(:poster).should be_present
    end
    it "requires a title" do
      post.title = nil
      post.should_not be_valid
      post.errors.on(:title).should be_present
    end
    it "requires an origin" do
      post.origin = nil
      post.should_not be_valid
      post.errors.on(:origin).should be_present
    end
    it "requires a message" do
      post.message = nil
      post.should_not be_valid
      post.errors.on(:message).should be_present
    end
    it "saves if all present" do
      lambda { post.save! }.should_not raise_error
    end
  end

  describe "#owned_by?" do
    subject do
      post = Post.new
      post.stubs(:poster => :user)
      post
    end
    it { should be_owned_by(:user) }
    it { should_not be_owned_by(:another_user) }
  end
end
