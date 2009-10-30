require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/posts/index.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:posts] = [
      stub_model(Post,
        :poster_id => 1,
        :title => "value for title",
        :origin => "value for origin",
        :message => "value for message"
      ),
      stub_model(Post,
        :poster_id => 1,
        :title => "value for title",
        :origin => "value for origin",
        :message => "value for message"
      )
    ]
  end

  it "renders a list of posts" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for origin".to_s, 2)
    response.should have_tag("tr>td", "value for message".to_s, 2)
  end
end
