require "test_helper"

class OfertasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferta = ofertas(:one)
  end

  test "should get index" do
    get ofertas_url
    assert_response :success
  end

  test "should get new" do
    get new_oferta_url
    assert_response :success
  end

  test "should create oferta" do
    assert_difference('Oferta.count') do
      post ofertas_url, params: { oferta: { cant_vacantes: @oferta.cant_vacantes, cargo: @oferta.cargo, descripcion: @oferta.descripcion, fecha_inicio: @oferta.fecha_inicio, modalidad: @oferta.modalidad, salario_max: @oferta.salario_max, salario_min: @oferta.salario_min } }
    end

    assert_redirected_to oferta_url(Oferta.last)
  end

  test "should show oferta" do
    get oferta_url(@oferta)
    assert_response :success
  end

  test "should get edit" do
    get edit_oferta_url(@oferta)
    assert_response :success
  end

  test "should update oferta" do
    patch oferta_url(@oferta), params: { oferta: { cant_vacantes: @oferta.cant_vacantes, cargo: @oferta.cargo, descripcion: @oferta.descripcion, fecha_inicio: @oferta.fecha_inicio, modalidad: @oferta.modalidad, salario_max: @oferta.salario_max, salario_min: @oferta.salario_min } }
    assert_redirected_to oferta_url(@oferta)
  end

  test "should destroy oferta" do
    assert_difference('Oferta.count', -1) do
      delete oferta_url(@oferta)
    end

    assert_redirected_to ofertas_url
  end
end
