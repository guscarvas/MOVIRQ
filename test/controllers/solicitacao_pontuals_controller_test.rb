require 'test_helper'

class SolicitacaoPontualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao_pontual = solicitacao_pontuals(:one)
  end

  test "should get index" do
    get solicitacao_pontuals_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_pontual_url
    assert_response :success
  end

  test "should create solicitacao_pontual" do
    assert_difference('SolicitacaoPontual.count') do
      post solicitacao_pontuals_url, params: { solicitacao_pontual: { Solicitação: @solicitacao_pontual.Solicitação } }
    end

    assert_redirected_to solicitacao_pontual_url(SolicitacaoPontual.last)
  end

  test "should show solicitacao_pontual" do
    get solicitacao_pontual_url(@solicitacao_pontual)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_pontual_url(@solicitacao_pontual)
    assert_response :success
  end

  test "should update solicitacao_pontual" do
    patch solicitacao_pontual_url(@solicitacao_pontual), params: { solicitacao_pontual: { Solicitação: @solicitacao_pontual.Solicitação } }
    assert_redirected_to solicitacao_pontual_url(@solicitacao_pontual)
  end

  test "should destroy solicitacao_pontual" do
    assert_difference('SolicitacaoPontual.count', -1) do
      delete solicitacao_pontual_url(@solicitacao_pontual)
    end

    assert_redirected_to solicitacao_pontuals_url
  end
end
