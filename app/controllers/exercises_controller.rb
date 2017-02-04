class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    respond_to do |format|
      format.html
      format.json { render json: @workouts }
    end
  end

  def create
  end
end
