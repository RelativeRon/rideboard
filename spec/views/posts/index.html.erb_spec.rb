require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/posts/index.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:posts] = @posts = [Factory(:post), Factory(:driver_post)]
  end

  it "renders a list of posts" do
    render
    @posts.each do |post|
      response.should contain_text(post.title)
      response.should contain_text(post.origin)
      response.should contain_text(post.message)
    end
  end
end
