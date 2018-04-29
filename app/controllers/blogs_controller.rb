class BlogsController < ApplicationController


  def show
    @blog = Blog.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
  end

  def new
      @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.valid?
      @user = User.find_by_id(session[:user_id])
      @user.blogs << @blog
      redirect_to user_path(@user)
    else
      redirect_to new_blog_path
    end
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @blog.update(blog_params)
    redirect_to blog_path(@blog)
  end

  def destory
    @blog.destroy
    redirect_to user_path(session[:user_id])
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def user_match?
    @blog = Blog.find_by_id(params[:id])
    if session[:user_id] != @blog.user_id
      redirect_to root_path
    end
  end
end
