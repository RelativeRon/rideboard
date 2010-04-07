require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PostsController do

  def mock_post(stubs={})
    @mock_post ||= mock_model(Post, stubs)
  end
      before(:each) do
        controller.stub!(:deny_access)
      end

  describe "POST create" do
    before(:each) do
      controller.stub!(:current_user).and_return(Factory.build(:poster))
    end

    describe "with valid params" do
      it "assigns a newly created post as post" do
        mock_post.should_receive(:save).and_return(true)
        Post.stub!(:new).with({'these' => 'params'}).and_return(mock_post)
        post :create, :post => {:these => 'params'}
      end

      it "redirects to the post index" do
        Post.stub!(:new).and_return(mock_post(:save => true))
        post :create, :post => {}
        response.should redirect_to(root_url)
      end
    end

    describe "with invalid params" do
      it "re-renders the 'new' template" do
        controller.stub!(:new_post).and_return(mock_post(:save => false))
        post :create, :post => {}
        response.should render_template('index')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested post" do
        Post.should_receive(:find).with("37").and_return(mock_post)
        mock_post.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :post => {:these => 'params'}
      end

      it "redirects to the post" do
        Post.stub!(:find).and_return(mock_post(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(post_url(mock_post))
      end
    end

    describe "with invalid params" do
      it "updates the requested post" do
        Post.should_receive(:find).with("37").and_return(mock_post)
        mock_post.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :post => {:these => 'params'}
      end

      it "re-renders the 'edit' template" do
        Post.stub!(:find).and_return(mock_post(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    context "when logged in" do
      before(:each) do
        controller.stub!(:deny_access)
      end

      it "destroys the requested post" do
        controller.should_receive(:post).and_return(mock_post)
        mock_post.should_receive(:destroy)
        delete :destroy, :id => "42"
      end

      it "redirects to the posts list" do
        controller.stub!(:post).and_return(mock_post(:destroy => true))
        delete :destroy, :id => "1"
        response.should redirect_to(posts_url)
      end
    end
  end

end
