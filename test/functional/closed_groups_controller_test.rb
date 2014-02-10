require 'test_helper'

class ClosedGroupsControllerTest < ActionController::TestCase
  setup do
    @closed_group = closed_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:closed_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create closed_group" do
    assert_difference('ClosedGroup.count') do
      post :create, closed_group: { admin_id: @closed_group.admin_id, decription: @closed_group.decription, name: @closed_group.name }
    end

    assert_redirected_to closed_group_path(assigns(:closed_group))
  end

  test "should show closed_group" do
    get :show, id: @closed_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @closed_group
    assert_response :success
  end

  test "should update closed_group" do
    put :update, id: @closed_group, closed_group: { admin_id: @closed_group.admin_id, decription: @closed_group.decription, name: @closed_group.name }
    assert_redirected_to closed_group_path(assigns(:closed_group))
  end

  test "should destroy closed_group" do
    assert_difference('ClosedGroup.count', -1) do
      delete :destroy, id: @closed_group
    end

    assert_redirected_to closed_groups_path
  end
end
