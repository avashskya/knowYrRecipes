require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get recipes_create_url
    assert_response :success
  end

  test "should get edit" do
    get recipes_edit_url
    assert_response :success
  end

  test "should get update" do
    get recipes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recipes_destroy_url
    assert_response :success
  end
end
