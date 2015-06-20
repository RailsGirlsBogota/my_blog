class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_attributes)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(post_attributes)
    if @post.save
      redirect_to posts_path
    else
      render :edit
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def comment
    comment = Comment.new
    comment.post_id = params[:id]
    comment.body = params[:comment][:body]
    comment.save
    flash[:notice] = "Added your comment"
    redirect_to action: :show, id: params[:id]
  end

  private

  def post_attributes
    params.require(:post).permit(:title, :body, :author)
  end

  def comment_attributes
    params.require(:comment).params(:body, :author)
  end
end













