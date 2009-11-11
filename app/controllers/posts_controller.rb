class PostsController < ApplicationController
  layout 'application'
  before_filter :deny_access, :except => [:index], :unless => :signed_in? 

  def index
    @posts = Post.all
    @post = Post.new

    respond_to do |format|
      format.html 
    end
  end

  def mine
    @posts = current_user.posts.all
    @post = Post.new

    respond_to do |format|
      format.html { render :action => :index }
    end
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html 
    end
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html 
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.new(params[:post])

    respond_to do |format|
      if @post.save
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to(root_path) }
      else
        format.html { render :action => "index" }
      end
    end
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(@post) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
    end
  end
end
