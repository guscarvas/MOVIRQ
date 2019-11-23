require 'test_helper'

class VerReservasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ver_reservas_index_url
    assert_response :success
  end

end
