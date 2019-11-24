require 'test_helper'

class SolicitacaoPontualControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get solicitacao_pontual_index_url
    assert_response :success
  end

end
