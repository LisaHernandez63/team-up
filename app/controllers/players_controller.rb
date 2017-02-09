class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    @workouts = @player.workouts
  end

  def new
    @team = Team.find(params[:team_id])
    @player = Player.new
  end

  def create
    @team = Team.find(params[:team_id])
    @player = Player.new(player_params)
    @player.team = @team
    if @player.save
      flash[:notice] = "Player added successfully"
      redirect_to @player
    else
      flash[:notice] = @player.errors.full_messages.to_sentence
      render :new
    end
  end

  private

    def player_params
      params.require(:player).permit(
      :first_name,
      :last_name,
      :position,
      :photo,
      :video,
      :fav_pregame_meal,
      :fav_pregame_drink
      )
    end
end
