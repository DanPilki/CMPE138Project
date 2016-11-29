require 'test_helper'

class PlayerPlaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_play = player_plays(:one)
  end

  test "should get index" do
    get player_plays_url
    assert_response :success
  end

  test "should get new" do
    get new_player_play_url
    assert_response :success
  end

  test "should create player_play" do
    assert_difference('PlayerPlay.count') do
      post player_plays_url, params: { player_play: { games_id: @player_play.games_id, players_id: @player_play.players_id } }
    end

    assert_redirected_to player_play_url(PlayerPlay.last)
  end

  test "should show player_play" do
    get player_play_url(@player_play)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_play_url(@player_play)
    assert_response :success
  end

  test "should update player_play" do
    patch player_play_url(@player_play), params: { player_play: { games_id: @player_play.games_id, players_id: @player_play.players_id } }
    assert_redirected_to player_play_url(@player_play)
  end

  test "should destroy player_play" do
    assert_difference('PlayerPlay.count', -1) do
      delete player_play_url(@player_play)
    end

    assert_redirected_to player_plays_url
  end
end
