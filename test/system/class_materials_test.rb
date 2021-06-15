require "application_system_test_case"

class ClassMaterialsTest < ApplicationSystemTestCase
  setup do
    @class_material = class_materials(:one)
  end

  test "visiting the index" do
    visit class_materials_url
    assert_selector "h1", text: "Class Materials"
  end

  test "creating a Class material" do
    visit class_materials_url
    click_on "New Class Material"

    fill_in "Material url", with: @class_material.material_url
    click_on "Create Class material"

    assert_text "Class material was successfully created"
    click_on "Back"
  end

  test "updating a Class material" do
    visit class_materials_url
    click_on "Edit", match: :first

    fill_in "Material url", with: @class_material.material_url
    click_on "Update Class material"

    assert_text "Class material was successfully updated"
    click_on "Back"
  end

  test "destroying a Class material" do
    visit class_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class material was successfully destroyed"
  end
end
