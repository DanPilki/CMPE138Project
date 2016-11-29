require 'test_helper'

class OppTeamGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opp_team_game = opp_team_games(:one)
  end

  test "should get index" do
    get opp_team_games_url
    assert_response :success
  end

  test "should get new" do
    get new_opp_team_game_url
    assert_response :success
  end

  test "should create opp_team_game" do
    assert_difference('OppTeamGame.count') do
      post opp_team_games_url, params: { opp_team_game: { games_id: @opp_team_game.games_id, opp_teams_id: @opp_team_game.opp_teams_id } }
    end

    assert_redirected_to opp_team_game_url(OppTeamGame.last)
  end

  test "should show opp_team_game" do
    get opp_team_game_url(@opp_team_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_opp_team_game_url(@opp_team_game)
    assert_response :success
  end

  test "should update opp_team_game" do
    patch opp_team_game_url(@opp_team_game), params: { opp_team_game: { games_id: @opp_team_game.games_id, opp_teams_id: @opp_team_game.opp_teams_id } }
    assert_redirected_to opp_team_game_url(@opp_team_game)
  end

  test "should destroy opp_team_game" do
    assert_difference('OppTeamGame.count', -1) do
      delete opp_team_game_url(@opp_team_game)
    end

    assert_redirected_to opp_team_games_url
  end
end
