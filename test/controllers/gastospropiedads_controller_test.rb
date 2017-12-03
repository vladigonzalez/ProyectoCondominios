require 'test_helper'

class GastospropiedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gastospropiedad = gastospropiedads(:one)
  end

  test "should get index" do
    get gastospropiedads_url
    assert_response :success
  end

  test "should get new" do
    get new_gastospropiedad_url
    assert_response :success
  end

  test "should create gastospropiedad" do
    assert_difference('Gastospropiedad.count') do
      post gastospropiedads_url, params: { gastospropiedad: { anho: @gastospropiedad.anho, mes: @gastospropiedad.mes, monto: @gastospropiedad.monto } }
    end

    assert_redirected_to gastospropiedad_url(Gastospropiedad.last)
  end

  test "should show gastospropiedad" do
    get gastospropiedad_url(@gastospropiedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_gastospropiedad_url(@gastospropiedad)
    assert_response :success
  end

  test "should update gastospropiedad" do
    patch gastospropiedad_url(@gastospropiedad), params: { gastospropiedad: { anho: @gastospropiedad.anho, mes: @gastospropiedad.mes, monto: @gastospropiedad.monto } }
    assert_redirected_to gastospropiedad_url(@gastospropiedad)
  end

  test "should destroy gastospropiedad" do
    assert_difference('Gastospropiedad.count', -1) do
      delete gastospropiedad_url(@gastospropiedad)
    end

    assert_redirected_to gastospropiedads_url
  end
end
