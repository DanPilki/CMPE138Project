class PlayerPlaysController < ApplicationController
  before_action :set_player_play, only: [:show, :edit, :update, :destroy]

  # GET /player_plays
  # GET /player_plays.json
  def index
    @player_plays = PlayerPlay.all
  end

  # GET /player_plays/1
  # GET /player_plays/1.json
  def show
  end

  # GET /player_plays/new
  def new
    @player_play = PlayerPlay.new
  end

  # GET /player_plays/1/edit
  def edit
  end

  # POST /player_plays
  # POST /player_plays.json
  def create
    @player_play = PlayerPlay.new(player_play_params)

    respond_to do |format|
      if @player_play.save
        format.html { redirect_to @player_play, notice: 'Player play was successfully created.' }
        format.json { render :show, status: :created, location: @player_play }
      else
        format.html { render :new }
        format.json { render json: @player_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_plays/1
  # PATCH/PUT /player_plays/1.json
  def update
    respond_to do |format|
      if @player_play.update(player_play_params)
        format.html { redirect_to @player_play, notice: 'Player play was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_play }
      else
        format.html { render :edit }
        format.json { render json: @player_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_plays/1
  # DELETE /player_plays/1.json
  def destroy
    @player_play.destroy
    respond_to do |format|
      format.html { redirect_to player_plays_url, notice: 'Player play was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_play
      @player_play = PlayerPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_play_params
      params.require(:player_play).permit(:players_id, :games_id)
    end
end
