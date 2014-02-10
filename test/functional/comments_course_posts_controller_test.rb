require 'test_helper'

class CommentsCoursePostsControllerTest < ActionController::TestCase
  setup do
    @comments_course_post = comments_course_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments_course_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comments_course_post" do
    assert_difference('CommentsCoursePost.count') do
      post :create, comments_course_post: { content: @comments_course_post.content, course_post_id: @comments_course_post.course_post_id, user_id: @comments_course_post.user_id }
    end

    assert_redirected_to comments_course_post_path(assigns(:comments_course_post))
  end

  test "should show comments_course_post" do
    get :show, id: @comments_course_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comments_course_post
    assert_response :success
  end

  test "should update comments_course_post" do
    put :update, id: @comments_course_post, comments_course_post: { content: @comments_course_post.content, course_post_id: @comments_course_post.course_post_id, user_id: @comments_course_post.user_id }
    assert_redirected_to comments_course_post_path(assigns(:comments_course_post))
  end

  test "should destroy comments_course_post" do
    assert_difference('CommentsCoursePost.count', -1) do
      delete :destroy, id: @comments_course_post
    end

    assert_redirected_to comments_course_posts_path
  end
end
