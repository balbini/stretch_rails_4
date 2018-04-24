class UsersController < ApplicationController
  before_action :require_login, only: [:edit, :update]

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      if @user.valid?
        login(@user)
        redirect_to @user
      else
        flash[:error] = "#{@user.errors.full_messages.join(", ")}"
        redirect_to new_user_path
      end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @user = User.find_by_id(session[:user_id])
    @user.update(user_params)
    @user.save(validate: false)
    redirect_to user_path(@user.id)
  end

 def user_params
   params.require(:user).permit(:name, :email, :password, :age, :current_weight, :goal_weight, :nutrition_goals, :stretch_goals, :strength_goals, :cardio_goals)
 end


end
