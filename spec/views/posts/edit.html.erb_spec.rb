require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/posts/edit.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:post] = @post = stub_model(Post,
      :new_record? => false,
      :poster_id => 1,
      :title => "value for title",
      :origin => "value for origin",
      :message => "value for message"
    )
  end

  it "renders the edit post form" do
    render

    response.should have_tag("form[action=#{post_path(@post)}][method=post]") do
      with_tag('input#post_poster_id[name=?]', "post[poster_id]")
      with_tag('input#post_title[name=?]', "post[title]")
      with_tag('input#post_origin[name=?]', "post[origin]")
      with_tag('textarea#post_message[name=?]', "post[message]")
    end
  end
end
