class PlayersPlaysController < ApplicationController
  before_action :set_players_play, only: [:show, :edit, :update, :destroy]

  # GET /players_plays
  # GET /players_plays.json
  def index
    @players_plays = PlayersPlay.all
  end

  # GET /players_plays/1
  # GET /players_plays/1.json
  def show
  end

  # GET /players_plays/new
  def new
    @players_play = PlayersPlay.new
  end

  # GET /players_plays/1/edit
  def edit
  end

  # POST /players_plays
  # POST /players_plays.json
  def create
    @players_play = PlayersPlay.new(players_play_params)

    respond_to do |format|
      if @players_play.save
        format.html { redirect_to @players_play, notice: 'Players play was successfully created.' }
        format.json { render :show, status: :created, location: @players_play }
      else
        format.html { render :new }
        format.json { render json: @players_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players_plays/1
  # PATCH/PUT /players_plays/1.json
  def update
    respond_to do |format|
      if @players_play.update(players_play_params)
        format.html { redirect_to @players_play, notice: 'Players play was successfully updated.' }
        format.json { render :show, status: :ok, location: @players_play }
      else
        format.html { render :edit }
        format.json { render json: @players_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players_plays/1
  # DELETE /players_plays/1.json
  def destroy
    @players_play.destroy
    respond_to do |format|
      format.html { redirect_to players_plays_url, notice: 'Players play was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_players_play
      @players_play = PlayersPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def players_play_params
      params.require(:players_play).permit(:players_id, :games_id)
    end
end
