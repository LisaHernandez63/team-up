class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @players = @team.players
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.user_id = current_user.id
      if @team.save
        flash[:notice] = "Team added successfully"
        redirect_to @team
      else
        flash[:notice] = @team.errors.full_messages.to_sentence
        render :new
      end
  end

  private

    def set_team
      @team = TEAM.find(params[:id])
    end

    def team_params
      params.require(:team).permit(
        :teamname,
        :coach,
        :schoolname,
        :streetaddress,
        :town,
        :state,
        :zip,
        :profile_photo,
        :description
      )
    end
end
