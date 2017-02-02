class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    @workouts = @player.workouts 
  end
end
