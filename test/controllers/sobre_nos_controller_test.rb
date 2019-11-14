require 'test_helper'

class SobreNosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sobre_nos_index_url
    assert_response :success
  end

end
