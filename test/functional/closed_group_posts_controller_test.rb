require 'test_helper'

class ClosedGroupPostsControllerTest < ActionController::TestCase
  setup do
    @closed_group_post = closed_group_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:closed_group_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create closed_group_post" do
    assert_difference('ClosedGroupPost.count') do
      post :create, closed_group_post: { closed_group_id: @closed_group_post.closed_group_id, content: @closed_group_post.content, title: @closed_group_post.title, user_id: @closed_group_post.user_id }
    end

    assert_redirected_to closed_group_post_path(assigns(:closed_group_post))
  end

  test "should show closed_group_post" do
    get :show, id: @closed_group_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @closed_group_post
    assert_response :success
  end

  test "should update closed_group_post" do
    put :update, id: @closed_group_post, closed_group_post: { closed_group_id: @closed_group_post.closed_group_id, content: @closed_group_post.content, title: @closed_group_post.title, user_id: @closed_group_post.user_id }
    assert_redirected_to closed_group_post_path(assigns(:closed_group_post))
  end

  test "should destroy closed_group_post" do
    assert_difference('ClosedGroupPost.count', -1) do
      delete :destroy, id: @closed_group_post
    end

    assert_redirected_to closed_group_posts_path
  end
end
