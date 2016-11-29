require 'test_helper'

class StatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get stats_url
    assert_response :success
  end

  test "should get new" do
    get new_stat_url
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post stats_url, params: { stat: { 3pt_A: @stat.3pt_A, 3pt_M: @stat.3pt_M, assist: @stat.assist, block: @stat.block, foul: @stat.foul, games_id: @stat.games_id, players_id: @stat.players_id, points: @stat.points, rebound: @stat.rebound, steal: @stat.steal } }
    end

    assert_redirected_to stat_url(Stat.last)
  end

  test "should show stat" do
    get stat_url(@stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_stat_url(@stat)
    assert_response :success
  end

  test "should update stat" do
    patch stat_url(@stat), params: { stat: { 3pt_A: @stat.3pt_A, 3pt_M: @stat.3pt_M, assist: @stat.assist, block: @stat.block, foul: @stat.foul, games_id: @stat.games_id, players_id: @stat.players_id, points: @stat.points, rebound: @stat.rebound, steal: @stat.steal } }
    assert_redirected_to stat_url(@stat)
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete stat_url(@stat)
    end

    assert_redirected_to stats_url
  end
end
