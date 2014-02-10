require 'test_helper'

class OpenGroupsControllerTest < ActionController::TestCase
  setup do
    @open_group = open_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_group" do
    assert_difference('OpenGroup.count') do
      post :create, open_group: { description: @open_group.description, name: @open_group.name }
    end

    assert_redirected_to open_group_path(assigns(:open_group))
  end

  test "should show open_group" do
    get :show, id: @open_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_group
    assert_response :success
  end

  test "should update open_group" do
    put :update, id: @open_group, open_group: { description: @open_group.description, name: @open_group.name }
    assert_redirected_to open_group_path(assigns(:open_group))
  end

  test "should destroy open_group" do
    assert_difference('OpenGroup.count', -1) do
      delete :destroy, id: @open_group
    end

    assert_redirected_to open_groups_path
  end
end
