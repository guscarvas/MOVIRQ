require 'test_helper'

class AtleticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atletica = atleticas(:one)
  end

  test "should get index" do
    get atleticas_url
    assert_response :success
  end

  test "should get new" do
    get new_atletica_url
    assert_response :success
  end

  test "should create atletica" do
    assert_difference('Atletica.count') do
      post atleticas_url, params: { atletica: { email: @atletica.email, name: @atletica.name, password: @atletica.password } }
    end

    assert_redirected_to atletica_url(Atletica.last)
  end

  test "should show atletica" do
    get atletica_url(@atletica)
    assert_response :success
  end

  test "should get edit" do
    get edit_atletica_url(@atletica)
    assert_response :success
  end

  test "should update atletica" do
    patch atletica_url(@atletica), params: { atletica: { email: @atletica.email, name: @atletica.name, password: @atletica.password } }
    assert_redirected_to atletica_url(@atletica)
  end

  test "should destroy atletica" do
    assert_difference('Atletica.count', -1) do
      delete atletica_url(@atletica)
    end

    assert_redirected_to atleticas_url
  end
end
