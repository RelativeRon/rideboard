class PostsController < ApplicationController

  layout 'application'
  before_filter :deny_access, :except => [:index, :show], :unless => :signed_in?

  expose :post
  expose(:new_post) { current_user.posts.new(params[:post]) }
  expose(:posts) { Post.all }

  def index
    respond_to do |format|
      format.html
    end
  end

  def show
    respond_to do |format|
      format.html
    end
  end

  def mine
    respond_to do |format|
      format.html { render :action => :index }
    end
  end

  def new
    respond_to do |format|
      format.html
    end
  end

  def edit
  end

  def create
    respond_to do |format|
      if new_post.save
        format.html {
          flash[:notice] = 'Post was successfully created.'
          redirect_to(root_path)
        }
        format.json {
          render :json => {
                 :message => new_post.message,
                 :title => new_post.title,
                 :origin => new_post.origin,
                 :html => render_to_string(:partial => 'posts/post.html.erb', :locals => {:post => new_post})
          }
        }
      else
        format.html { render :action => "index" }
        format.json { render :json => { :errors => new_post.error_messages } }
      end
    end
  end

  def update
    respond_to do |format|
      if post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(post) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
    end
  end
end
