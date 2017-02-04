class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:edit, :show, :update, :destroy]
  before_action :set_player, except: [:show]
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    binding.pry
    @player = Player.find(params[:id])
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.player = @player
    if @workout.save
      flash[:notice] = "Team added successfully"
      binding.binding.pry
      redirect_to @workout
    else
      binding.pry
      flash[:notice] = @workout.errors.full_messages.to_sentence
      render :new
    end
  end

  private

    def set_workout
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(
        :name,
        :frequency
      )
    end
end
