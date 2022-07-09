require "test_helper"

class OfertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ofertum = oferta(:one)
  end

  test "should get index" do
    get oferta_url
    assert_response :success
  end

  test "should get new" do
    get new_ofertum_url
    assert_response :success
  end

  test "should create ofertum" do
    assert_difference('Ofertum.count') do
      post oferta_url, params: { ofertum: { cant_vacantes: @ofertum.cant_vacantes, cargo: @ofertum.cargo, descripcion: @ofertum.descripcion, fecha_inicio: @ofertum.fecha_inicio, salario_max: @ofertum.salario_max, salario_min: @ofertum.salario_min } }
    end

    assert_redirected_to ofertum_url(Ofertum.last)
  end

  test "should show ofertum" do
    get ofertum_url(@ofertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ofertum_url(@ofertum)
    assert_response :success
  end

  test "should update ofertum" do
    patch ofertum_url(@ofertum), params: { ofertum: { cant_vacantes: @ofertum.cant_vacantes, cargo: @ofertum.cargo, descripcion: @ofertum.descripcion, fecha_inicio: @ofertum.fecha_inicio, salario_max: @ofertum.salario_max, salario_min: @ofertum.salario_min } }
    assert_redirected_to ofertum_url(@ofertum)
  end

  test "should destroy ofertum" do
    assert_difference('Ofertum.count', -1) do
      delete ofertum_url(@ofertum)
    end

    assert_redirected_to oferta_url
  end
end
