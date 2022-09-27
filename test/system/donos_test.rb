require "application_system_test_case"

class DonosTest < ApplicationSystemTestCase
  setup do
    @dono = donos(:one)
  end

  test "visiting the index" do
    visit donos_url
    assert_selector "h1", text: "Donos"
  end

  test "should create dono" do
    visit donos_url
    click_on "New dono"

    fill_in "Cnpj", with: @dono.cnpj
    click_on "Create Dono"

    assert_text "Dono was successfully created"
    click_on "Back"
  end

  test "should update Dono" do
    visit dono_url(@dono)
    click_on "Edit this dono", match: :first

    fill_in "Cnpj", with: @dono.cnpj
    click_on "Update Dono"

    assert_text "Dono was successfully updated"
    click_on "Back"
  end

  test "should destroy Dono" do
    visit dono_url(@dono)
    click_on "Destroy this dono", match: :first

    assert_text "Dono was successfully destroyed"
  end
end
