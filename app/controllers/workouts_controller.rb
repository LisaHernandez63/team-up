class WorkoutsController < ApplicationController

  def show
    @workout = Workout.find(params[:id])
    @exercises = @workout.exercises
  end

  def new
    @player = Player.find(params[:player_id])
    @workout = Workout.new
  end

  def create
    @player = Player.find(params[:player_id])
    @workout = Workout.new(workout_params)
    @workout.player = @player
    @workout.user_id = current_user.id
    if @workout.save
      flash[:notice] = "Workout added successfully"
      redirect_to @workout
    else
      flash[:notice] = @workout.errors.full_messages.to_sentence
      render :new
    end
  end

  private

    def workout_params
      params.require(:workout).permit(
        :name,
        :frequency
      )
    end
end
