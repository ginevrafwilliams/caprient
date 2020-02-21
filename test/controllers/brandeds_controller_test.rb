require 'test_helper'

class BrandedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brandeds_index_url
    assert_response :success
  end

  test "should get show" do
    get brandeds_show_url
    assert_response :success
  end

end
