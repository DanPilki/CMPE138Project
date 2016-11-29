class OppTeamGamesController < ApplicationController
  before_action :set_opp_team_game, only: [:show, :edit, :update, :destroy]

  # GET /opp_team_games
  # GET /opp_team_games.json
  def index
    @opp_team_games = OppTeamGame.all
  end

  # GET /opp_team_games/1
  # GET /opp_team_games/1.json
  def show
  end

  # GET /opp_team_games/new
  def new
    @opp_team_game = OppTeamGame.new
  end

  # GET /opp_team_games/1/edit
  def edit
  end

  # POST /opp_team_games
  # POST /opp_team_games.json
  def create
    @opp_team_game = OppTeamGame.new(opp_team_game_params)

    respond_to do |format|
      if @opp_team_game.save
        format.html { redirect_to @opp_team_game, notice: 'Opp team game was successfully created.' }
        format.json { render :show, status: :created, location: @opp_team_game }
      else
        format.html { render :new }
        format.json { render json: @opp_team_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opp_team_games/1
  # PATCH/PUT /opp_team_games/1.json
  def update
    respond_to do |format|
      if @opp_team_game.update(opp_team_game_params)
        format.html { redirect_to @opp_team_game, notice: 'Opp team game was successfully updated.' }
        format.json { render :show, status: :ok, location: @opp_team_game }
      else
        format.html { render :edit }
        format.json { render json: @opp_team_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opp_team_games/1
  # DELETE /opp_team_games/1.json
  def destroy
    @opp_team_game.destroy
    respond_to do |format|
      format.html { redirect_to opp_team_games_url, notice: 'Opp team game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opp_team_game
      @opp_team_game = OppTeamGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opp_team_game_params
      params.require(:opp_team_game).permit(:opp_teams_id, :games_id)
    end
end
