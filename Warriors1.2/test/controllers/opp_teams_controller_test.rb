require 'test_helper'

class OppTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opp_team = opp_teams(:one)
  end

  test "should get index" do
    get opp_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_opp_team_url
    assert_response :success
  end

  test "should create opp_team" do
    assert_difference('OppTeam.count') do
      post opp_teams_url, params: { opp_team: { coach: @opp_team.coach, home: @opp_team.home, name: @opp_team.name, owner: @opp_team.owner } }
    end

    assert_redirected_to opp_team_url(OppTeam.last)
  end

  test "should show opp_team" do
    get opp_team_url(@opp_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_opp_team_url(@opp_team)
    assert_response :success
  end

  test "should update opp_team" do
    patch opp_team_url(@opp_team), params: { opp_team: { coach: @opp_team.coach, home: @opp_team.home, name: @opp_team.name, owner: @opp_team.owner } }
    assert_redirected_to opp_team_url(@opp_team)
  end

  test "should destroy opp_team" do
    assert_difference('OppTeam.count', -1) do
      delete opp_team_url(@opp_team)
    end

    assert_redirected_to opp_teams_url
  end
end
