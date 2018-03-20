class PostsController < ApplicationController
  # makes methods available to the controller
  # “before_action” filter will be triggered only before the “show”, “edit”, “update” and “destroy” actions of this Posts controller.
  # “before_action” :authenticate_user! can only access to :index and :show
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:edit, :update, :show, :destroy]

  # This method loads the resource into an instance variable and authorizes it automatically for every action
  # in posts_controller.rb. If the user is not able to perform the given action, the CanCan::AccessDenied exception is raised.
  # load_and_authorize_resource

  # Index action to render all posts
  def index

    if params[:category].blank?
      @posts = Post.all
      @posts = @posts.page(params[:page]).per(3).order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(category_id: @category_id).order("created_at DESC").page(params[:page]).per(3)
    end

      # @posts = Post.all
      # @posts = @posts.page(params[:page]).per(3)
  end

  # New action for creating post
  def new
    # The “new” action initializes a new instance of the “Post” model, with default values. Basically “new” is just
    # making a container where we can put stuff. That stuff is coming from the params required and permitted elements.
    # Note: this action renders a view for a new post.
    @post = Post.new
  end

  # Create action saves the post into database
  def create
    # The “create” action initializes a new “Post” instance assigning attribute values from the params hash that
    # are allowed through mass assignment in the post_params method (require & permit). It creates a new row in the
    # posts database. So with this the “@post” now holds an instance of the “Post” model with values supplied by
    # the browser and held by the params hash
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "Successfully created post!"
      # redirect_to post_path(@post)
      redirect_to @post
    else
      flash[:alert] = "Error creating new post!"
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit
    #  it will render a view to edit and update the post. The before_action will trigger the action to find
    # in the database the relevant post thanks to the URL hash
    # Again this action looks empty, but it’s not due to the before_action filter.
  end

  # Update action updates the post with the new information
  def update
    # The “update” action also benefits from the before_action that find the relevant post for us based on the URL params.
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully updated post!"
      # redirect_to post_path(@post)
      redirect_to @post
      # redirect_to :controller => 'posts', :action => 'show',
    else
      flash[:alert] = "Error updating post!"
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
    # As we already have our “before_action” filter set on the “show” action, it does the job for us to find into the
    # Post model database the one with the “:id” provided in the URL params
    # To be clear : this action looks empty, but it’s not, because of the before_action.
  end

  # The destroy action removes the post permanently from the database
  def destroy
    # The “destroy” action uses the before_action to get the relevant post, and destroys it and redirects
    # to the root_path defined in the routes.rb file (see in a few lines), flashing a success notice.
    # The row gets deleted in the database.
    if @post.delete
      flash[:notice] = "Successfully deleted post!"
      # redirect_to posts_path
      redirect_to root_path
    else
      flash[:alert] = "Error updating post!"
    end
  end

  def post_params
    # It's used to mark parameters as required and to set the parameters as permitted/allowed for mass updating
    params.require(:post).permit(:title, :body, :category_id)
  end

  def find_post
    # It is used to extract from hash of parameters sent by url from the browser and then look into the posts db for the id
    # the post object is returned in the @post, @post is an instance variable and is now available in our "views"
    @post = Post.find(params[:id])
  end

end
