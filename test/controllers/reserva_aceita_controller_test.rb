require 'test_helper'

class ReservaAceitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserva_aceitum = reserva_aceita(:one)
  end

  test "should get index" do
    get reserva_aceita_url
    assert_response :success
  end

  test "should get new" do
    get new_reserva_aceitum_url
    assert_response :success
  end

  test "should create reserva_aceitum" do
    assert_difference('ReservaAceitum.count') do
      post reserva_aceita_url, params: { reserva_aceitum: { dono: @reserva_aceitum.dono, esporte: @reserva_aceitum.esporte, fim: @reserva_aceitum.fim, inicio: @reserva_aceitum.inicio, naipe: @reserva_aceitum.naipe } }
    end

    assert_redirected_to reserva_aceitum_url(ReservaAceitum.last)
  end

  test "should show reserva_aceitum" do
    get reserva_aceitum_url(@reserva_aceitum)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserva_aceitum_url(@reserva_aceitum)
    assert_response :success
  end

  test "should update reserva_aceitum" do
    patch reserva_aceitum_url(@reserva_aceitum), params: { reserva_aceitum: { dono: @reserva_aceitum.dono, esporte: @reserva_aceitum.esporte, fim: @reserva_aceitum.fim, inicio: @reserva_aceitum.inicio, naipe: @reserva_aceitum.naipe } }
    assert_redirected_to reserva_aceitum_url(@reserva_aceitum)
  end

  test "should destroy reserva_aceitum" do
    assert_difference('ReservaAceitum.count', -1) do
      delete reserva_aceitum_url(@reserva_aceitum)
    end

    assert_redirected_to reserva_aceita_url
  end
end
