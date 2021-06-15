require "test_helper"

class ClassMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_material = class_materials(:one)
  end

  test "should get index" do
    get class_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_class_material_url
    assert_response :success
  end

  test "should create class_material" do
    assert_difference('ClassMaterial.count') do
      post class_materials_url, params: { class_material: { material_url: @class_material.material_url } }
    end

    assert_redirected_to class_material_url(ClassMaterial.last)
  end

  test "should show class_material" do
    get class_material_url(@class_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_material_url(@class_material)
    assert_response :success
  end

  test "should update class_material" do
    patch class_material_url(@class_material), params: { class_material: { material_url: @class_material.material_url } }
    assert_redirected_to class_material_url(@class_material)
  end

  test "should destroy class_material" do
    assert_difference('ClassMaterial.count', -1) do
      delete class_material_url(@class_material)
    end

    assert_redirected_to class_materials_url
  end
end
