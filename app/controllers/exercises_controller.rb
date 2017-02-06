class ExercisesController < ApplicationController

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
