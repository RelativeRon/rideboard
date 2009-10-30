require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/posts/new.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:post] = stub_model(Post,
      :new_record? => true,
      :poster_id => 1,
      :title => "value for title",
      :origin => "value for origin",
      :message => "value for message"
    )
  end

  it "renders new post form" do
    render

    response.should have_tag("form[action=?][method=post]", posts_path) do
      with_tag("input#post_poster_id[name=?]", "post[poster_id]")
      with_tag("input#post_title[name=?]", "post[title]")
      with_tag("input#post_origin[name=?]", "post[origin]")
      with_tag("textarea#post_message[name=?]", "post[message]")
    end
  end
end
