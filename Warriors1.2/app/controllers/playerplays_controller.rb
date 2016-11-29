class PlayerplaysController < ApplicationController
  before_action :set_playerplay, only: [:show, :edit, :update, :destroy]

  # GET /playerplays
  # GET /playerplays.json
  def index
    @playerplays = Playerplay.all
  end

  # GET /playerplays/1
  # GET /playerplays/1.json
  def show
  end

  # GET /playerplays/new
  def new
    @playerplay = Playerplay.new
  end

  # GET /playerplays/1/edit
  def edit
  end

  # POST /playerplays
  # POST /playerplays.json
  def create
    @playerplay = Playerplay.new(playerplay_params)

    respond_to do |format|
      if @playerplay.save
        format.html { redirect_to @playerplay, notice: 'Playerplay was successfully created.' }
        format.json { render :show, status: :created, location: @playerplay }
      else
        format.html { render :new }
        format.json { render json: @playerplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playerplays/1
  # PATCH/PUT /playerplays/1.json
  def update
    respond_to do |format|
      if @playerplay.update(playerplay_params)
        format.html { redirect_to @playerplay, notice: 'Playerplay was successfully updated.' }
        format.json { render :show, status: :ok, location: @playerplay }
      else
        format.html { render :edit }
        format.json { render json: @playerplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playerplays/1
  # DELETE /playerplays/1.json
  def destroy
    @playerplay.destroy
    respond_to do |format|
      format.html { redirect_to playerplays_url, notice: 'Playerplay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playerplay
      @playerplay = Playerplay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playerplay_params
      params.require(:playerplay).permit(:players_id, :games_id)
    end
end
