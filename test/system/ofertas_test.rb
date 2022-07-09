require "application_system_test_case"

class OfertasTest < ApplicationSystemTestCase
  setup do
    @oferta = ofertas(:one)
  end

  test "visiting the index" do
    visit ofertas_url
    assert_selector "h1", text: "Ofertas"
  end

  test "creating a Oferta" do
    visit ofertas_url
    click_on "New Oferta"

    fill_in "Cant vacantes", with: @oferta.cant_vacantes
    fill_in "Cargo", with: @oferta.cargo
    fill_in "Descripcion", with: @oferta.descripcion
    fill_in "Fecha inicio", with: @oferta.fecha_inicio
    fill_in "Modalidad", with: @oferta.modalidad
    fill_in "Salario max", with: @oferta.salario_max
    fill_in "Salario min", with: @oferta.salario_min
    click_on "Create Oferta"

    assert_text "Oferta was successfully created"
    click_on "Back"
  end

  test "updating a Oferta" do
    visit ofertas_url
    click_on "Edit", match: :first

    fill_in "Cant vacantes", with: @oferta.cant_vacantes
    fill_in "Cargo", with: @oferta.cargo
    fill_in "Descripcion", with: @oferta.descripcion
    fill_in "Fecha inicio", with: @oferta.fecha_inicio
    fill_in "Modalidad", with: @oferta.modalidad
    fill_in "Salario max", with: @oferta.salario_max
    fill_in "Salario min", with: @oferta.salario_min
    click_on "Update Oferta"

    assert_text "Oferta was successfully updated"
    click_on "Back"
  end

  test "destroying a Oferta" do
    visit ofertas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oferta was successfully destroyed"
  end
end
