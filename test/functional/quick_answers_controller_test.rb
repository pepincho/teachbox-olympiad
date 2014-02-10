require 'test_helper'

class QuickAnswersControllerTest < ActionController::TestCase
  setup do
    @quick_answer = quick_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quick_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quick_answer" do
    assert_difference('QuickAnswer.count') do
      post :create, quick_answer: { answer: @quick_answer.answer, quick_question_id: @quick_answer.quick_question_id, user_id: @quick_answer.user_id }
    end

    assert_redirected_to quick_answer_path(assigns(:quick_answer))
  end

  test "should show quick_answer" do
    get :show, id: @quick_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quick_answer
    assert_response :success
  end

  test "should update quick_answer" do
    put :update, id: @quick_answer, quick_answer: { answer: @quick_answer.answer, quick_question_id: @quick_answer.quick_question_id, user_id: @quick_answer.user_id }
    assert_redirected_to quick_answer_path(assigns(:quick_answer))
  end

  test "should destroy quick_answer" do
    assert_difference('QuickAnswer.count', -1) do
      delete :destroy, id: @quick_answer
    end

    assert_redirected_to quick_answers_path
  end
end
