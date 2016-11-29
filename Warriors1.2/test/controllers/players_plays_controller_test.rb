require 'test_helper'

class PlayersPlaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @players_play = players_plays(:one)
  end

  test "should get index" do
    get players_plays_url
    assert_response :success
  end

  test "should get new" do
    get new_players_play_url
    assert_response :success
  end

  test "should create players_play" do
    assert_difference('PlayersPlay.count') do
      post players_plays_url, params: { players_play: { games_id: @players_play.games_id, players_id: @players_play.players_id } }
    end

    assert_redirected_to players_play_url(PlayersPlay.last)
  end

  test "should show players_play" do
    get players_play_url(@players_play)
    assert_response :success
  end

  test "should get edit" do
    get edit_players_play_url(@players_play)
    assert_response :success
  end

  test "should update players_play" do
    patch players_play_url(@players_play), params: { players_play: { games_id: @players_play.games_id, players_id: @players_play.players_id } }
    assert_redirected_to players_play_url(@players_play)
  end

  test "should destroy players_play" do
    assert_difference('PlayersPlay.count', -1) do
      delete players_play_url(@players_play)
    end

    assert_redirected_to players_plays_url
  end
end
