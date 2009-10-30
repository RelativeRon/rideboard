require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/posts/show.html.erb" do
  include PostsHelper
  before(:each) do
    assigns[:post] = @post = stub_model(Post,
      :poster_id => 1,
      :title => "value for title",
      :origin => "value for origin",
      :message => "value for message"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ origin/)
    response.should have_text(/value\ for\ message/)
  end
end
