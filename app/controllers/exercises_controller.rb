class ExercisesController < ApplicationController

  def index
    base_url = "https://wger.de/api/v2/exercise.json"
    response = RestClient.get base_url
    @data = JSON.load response
    @results = @data["results"]
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @workout = Workout.find(params[:workout_id])
    @exercise = Exercise.new
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = Exercise.new(exercise_params)
    @exercise.user_id = current_user.id
    if @exercise.save
      flash[:notice] = "Exercise added successfully"
      @exercise.workexes.create(exercise_id: @exercise.id, workout_id: params[:workout_id])
      redirect_to workout_path(@workout)
    else
      flash[:notice] = @exercise.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(
    :name,
    :description,
    :category,
    :num_sets,
    :num_reps,
    :equipment,
    :photo,
    :video
    )
  end
end
