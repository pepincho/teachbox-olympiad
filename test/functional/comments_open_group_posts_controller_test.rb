require 'test_helper'

class CommentsOpenGroupPostsControllerTest < ActionController::TestCase
  setup do
    @comments_open_group_post = comments_open_group_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments_open_group_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comments_open_group_post" do
    assert_difference('CommentsOpenGroupPost.count') do
      post :create, comments_open_group_post: { content: @comments_open_group_post.content, open_group_post_id: @comments_open_group_post.open_group_post_id, user_id: @comments_open_group_post.user_id }
    end

    assert_redirected_to comments_open_group_post_path(assigns(:comments_open_group_post))
  end

  test "should show comments_open_group_post" do
    get :show, id: @comments_open_group_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comments_open_group_post
    assert_response :success
  end

  test "should update comments_open_group_post" do
    put :update, id: @comments_open_group_post, comments_open_group_post: { content: @comments_open_group_post.content, open_group_post_id: @comments_open_group_post.open_group_post_id, user_id: @comments_open_group_post.user_id }
    assert_redirected_to comments_open_group_post_path(assigns(:comments_open_group_post))
  end

  test "should destroy comments_open_group_post" do
    assert_difference('CommentsOpenGroupPost.count', -1) do
      delete :destroy, id: @comments_open_group_post
    end

    assert_redirected_to comments_open_group_posts_path
  end
end
