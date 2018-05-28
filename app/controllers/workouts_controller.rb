class WorkoutsController < ApplicationController
  before_action :require_login
  before_action :user_match?, only: [:edit, :update, :destroy]

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    if @workout.save
      redirect_to users_path
    end
  end

  def show
    @workout = Workout.find_by_id(params[:id])
    @user = User.find_by_id(@workout.user_id)
  end
  private

  def workout_params
    params.require(:workout).permit(:workout_type, :exercises, :experience)
  end

end
