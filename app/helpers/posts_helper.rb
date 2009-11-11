module PostsHelper
  def posts_header_tag
    text = (params[:action] == 'mine' ? "My Posts" : "Current Posts")
    "<h1>#{text}</h1>"
  end

  def posts_view_toggle_link_tag
    if params[:action] == 'mine'
      link_to "View all posts", posts_path
    else
      link_to "View my posts", my_posts_path
    end
  end
end
