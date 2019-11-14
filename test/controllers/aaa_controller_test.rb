require 'test_helper'

class AaaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aaa_index_url
    assert_response :success
  end

end
