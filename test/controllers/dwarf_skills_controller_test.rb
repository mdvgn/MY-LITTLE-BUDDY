require 'test_helper'

class DwarfSkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dwarf_skills_new_url
    assert_response :success
  end

  test "should get create" do
    get dwarf_skills_create_url
    assert_response :success
  end

  test "should get edit" do
    get dwarf_skills_edit_url
    assert_response :success
  end

  test "should get update" do
    get dwarf_skills_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dwarf_skills_destroy_url
    assert_response :success
  end

end
