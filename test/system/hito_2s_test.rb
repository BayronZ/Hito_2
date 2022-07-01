require "application_system_test_case"

class Hito2sTest < ApplicationSystemTestCase
  setup do
    @hito_2 = hito_2s(:one)
  end

  test "visiting the index" do
    visit hito_2s_url
    assert_selector "h1", text: "Hito 2s"
  end

  test "should create hito 2" do
    visit hito_2s_url
    click_on "New hito 2"

    fill_in "Name", with: @hito_2.name
    fill_in "User", with: @hito_2.user_id
    click_on "Create Hito 2"

    assert_text "Hito 2 was successfully created"
    click_on "Back"
  end

  test "should update Hito 2" do
    visit hito_2_url(@hito_2)
    click_on "Edit this hito 2", match: :first

    fill_in "Name", with: @hito_2.name
    fill_in "User", with: @hito_2.user_id
    click_on "Update Hito 2"

    assert_text "Hito 2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Hito 2" do
    visit hito_2_url(@hito_2)
    click_on "Destroy this hito 2", match: :first

    assert_text "Hito 2 was successfully destroyed"
  end
end
