require 'test_helper'

class QuickQuestionsControllerTest < ActionController::TestCase
  setup do
    @quick_question = quick_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quick_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quick_question" do
    assert_difference('QuickQuestion.count') do
      post :create, quick_question: { question: @quick_question.question, user_id: @quick_question.user_id }
    end

    assert_redirected_to quick_question_path(assigns(:quick_question))
  end

  test "should show quick_question" do
    get :show, id: @quick_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quick_question
    assert_response :success
  end

  test "should update quick_question" do
    put :update, id: @quick_question, quick_question: { question: @quick_question.question, user_id: @quick_question.user_id }
    assert_redirected_to quick_question_path(assigns(:quick_question))
  end

  test "should destroy quick_question" do
    assert_difference('QuickQuestion.count', -1) do
      delete :destroy, id: @quick_question
    end

    assert_redirected_to quick_questions_path
  end
end
