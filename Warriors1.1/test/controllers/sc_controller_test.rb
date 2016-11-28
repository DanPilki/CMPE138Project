require 'test_helper'

class ScControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sc_index_url
    assert_response :success
  end

end
