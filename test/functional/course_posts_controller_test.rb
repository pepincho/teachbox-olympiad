require 'test_helper'

class CoursePostsControllerTest < ActionController::TestCase
  setup do
    @course_post = course_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_post" do
    assert_difference('CoursePost.count') do
      post :create, course_post: { content: @course_post.content, course_id: @course_post.course_id, title: @course_post.title, user_id: @course_post.user_id }
    end

    assert_redirected_to course_post_path(assigns(:course_post))
  end

  test "should show course_post" do
    get :show, id: @course_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_post
    assert_response :success
  end

  test "should update course_post" do
    put :update, id: @course_post, course_post: { content: @course_post.content, course_id: @course_post.course_id, title: @course_post.title, user_id: @course_post.user_id }
    assert_redirected_to course_post_path(assigns(:course_post))
  end

  test "should destroy course_post" do
    assert_difference('CoursePost.count', -1) do
      delete :destroy, id: @course_post
    end

    assert_redirected_to course_posts_path
  end
end
