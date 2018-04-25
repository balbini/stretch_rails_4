class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new
  end



end
