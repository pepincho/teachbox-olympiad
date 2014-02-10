require 'test_helper'

class OpenGroupPostsControllerTest < ActionController::TestCase
  setup do
    @open_group_post = open_group_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_group_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_group_post" do
    assert_difference('OpenGroupPost.count') do
      post :create, open_group_post: { content: @open_group_post.content, open_group_id: @open_group_post.open_group_id, title: @open_group_post.title, user_id: @open_group_post.user_id }
    end

    assert_redirected_to open_group_post_path(assigns(:open_group_post))
  end

  test "should show open_group_post" do
    get :show, id: @open_group_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_group_post
    assert_response :success
  end

  test "should update open_group_post" do
    put :update, id: @open_group_post, open_group_post: { content: @open_group_post.content, open_group_id: @open_group_post.open_group_id, title: @open_group_post.title, user_id: @open_group_post.user_id }
    assert_redirected_to open_group_post_path(assigns(:open_group_post))
  end

  test "should destroy open_group_post" do
    assert_difference('OpenGroupPost.count', -1) do
      delete :destroy, id: @open_group_post
    end

    assert_redirected_to open_group_posts_path
  end
end
