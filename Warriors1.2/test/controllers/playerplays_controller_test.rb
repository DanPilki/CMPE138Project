require 'test_helper'

class PlayerplaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playerplay = playerplays(:one)
  end

  test "should get index" do
    get playerplays_url
    assert_response :success
  end

  test "should get new" do
    get new_playerplay_url
    assert_response :success
  end

  test "should create playerplay" do
    assert_difference('Playerplay.count') do
      post playerplays_url, params: { playerplay: { games_id: @playerplay.games_id, players_id: @playerplay.players_id } }
    end

    assert_redirected_to playerplay_url(Playerplay.last)
  end

  test "should show playerplay" do
    get playerplay_url(@playerplay)
    assert_response :success
  end

  test "should get edit" do
    get edit_playerplay_url(@playerplay)
    assert_response :success
  end

  test "should update playerplay" do
    patch playerplay_url(@playerplay), params: { playerplay: { games_id: @playerplay.games_id, players_id: @playerplay.players_id } }
    assert_redirected_to playerplay_url(@playerplay)
  end

  test "should destroy playerplay" do
    assert_difference('Playerplay.count', -1) do
      delete playerplay_url(@playerplay)
    end

    assert_redirected_to playerplays_url
  end
end
