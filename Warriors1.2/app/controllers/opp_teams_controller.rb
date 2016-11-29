class OppTeamsController < ApplicationController
  before_action :set_opp_team, only: [:show, :edit, :update, :destroy]

  # GET /opp_teams
  # GET /opp_teams.json
  def index
    @opp_teams = OppTeam.all
  end

  # GET /opp_teams/1
  # GET /opp_teams/1.json
  def show
  end

  # GET /opp_teams/new
  def new
    @opp_team = OppTeam.new
  end

  # GET /opp_teams/1/edit
  def edit
  end

  # POST /opp_teams
  # POST /opp_teams.json
  def create
    @opp_team = OppTeam.new(opp_team_params)

    respond_to do |format|
      if @opp_team.save
        format.html { redirect_to @opp_team, notice: 'Opp team was successfully created.' }
        format.json { render :show, status: :created, location: @opp_team }
      else
        format.html { render :new }
        format.json { render json: @opp_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opp_teams/1
  # PATCH/PUT /opp_teams/1.json
  def update
    respond_to do |format|
      if @opp_team.update(opp_team_params)
        format.html { redirect_to @opp_team, notice: 'Opp team was successfully updated.' }
        format.json { render :show, status: :ok, location: @opp_team }
      else
        format.html { render :edit }
        format.json { render json: @opp_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opp_teams/1
  # DELETE /opp_teams/1.json
  def destroy
    @opp_team.destroy
    respond_to do |format|
      format.html { redirect_to opp_teams_url, notice: 'Opp team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opp_team
      @opp_team = OppTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opp_team_params
      params.require(:opp_team).permit(:name, :home, :coach, :owner)
    end
end
