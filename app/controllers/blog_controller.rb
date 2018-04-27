class BlogController < ApplicationController
  before_action :require_login, except: [:show]

  def show
    @blog = Blog.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
  end

  def new
    if session[:user_id] == nil
      flash[:error] = "You must be logged in to create a blog post."
      redirect_to user_path(session[:user_id])
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.valid?
      @user = User.fin_by_id(session[:user_id])
      @user.blogs << @blog
    else
      flash[:error] = "#{@blog.errors.full_messages.join(", ")}"
      redirect_to new_blog_path
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
