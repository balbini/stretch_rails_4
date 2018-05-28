class AdultsController < ApplicationController
  before_action :require_login


  def index

  end

  def new
    @adult = Adult.new
  end

  def create
    @adult = Adult.create(adult_params)
    if @adult.save
      redirect_to users_path
    end
  end

  def show
    @adult = Adult.find_by_id(params[:id])
  end

  private

  def adult_params
    params.require(:adult).permit(:adult_title, :link, :description)
  end

  # def create
  #   @blog = Blog.create(blog_params)
  #   if @blog.valid?
  #     @user = User.find_by_id(session[:user_id])
  #     @user.blogs << @blog
  #     redirect_to user_path(@user)
  #   else
  #     redirect_to new_blog_path
  #   end
  # end

end
