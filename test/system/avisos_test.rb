require "application_system_test_case"

class AvisosTest < ApplicationSystemTestCase
  setup do
    @aviso = avisos(:one)
  end

  test "visiting the index" do
    visit avisos_url
    assert_selector "h1", text: "Avisos"
  end

  test "should create aviso" do
    visit avisos_url
    click_on "New aviso"

    fill_in "Categoria", with: @aviso.categoria
    fill_in "Descripcion", with: @aviso.descripcion
    fill_in "Id aviso", with: @aviso.id_aviso
    fill_in "Id socio", with: @aviso.id_socio
    fill_in "Id usuario", with: @aviso.id_usuario
    fill_in "Titulo", with: @aviso.titulo
    click_on "Create Aviso"

    assert_text "Aviso was successfully created"
    click_on "Back"
  end

  test "should update Aviso" do
    visit aviso_url(@aviso)
    click_on "Edit this aviso", match: :first

    fill_in "Categoria", with: @aviso.categoria
    fill_in "Descripcion", with: @aviso.descripcion
    fill_in "Id aviso", with: @aviso.id_aviso
    fill_in "Id socio", with: @aviso.id_socio
    fill_in "Id usuario", with: @aviso.id_usuario
    fill_in "Titulo", with: @aviso.titulo
    click_on "Update Aviso"

    assert_text "Aviso was successfully updated"
    click_on "Back"
  end

  test "should destroy Aviso" do
    visit aviso_url(@aviso)
    click_on "Destroy this aviso", match: :first

    assert_text "Aviso was successfully destroyed"
  end
end
