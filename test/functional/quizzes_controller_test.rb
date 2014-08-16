require 'test_helper'

class QuizzesControllerTest < ActionController::TestCase
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post :create, quiz: { q0: @quiz.q0, q1: @quiz.q1, q2: @quiz.q2, q3: @quiz.q3, q4: @quiz.q4, q5: @quiz.q5, q6: @quiz.q6, q7: @quiz.q7, q8: @quiz.q8, q9: @quiz.q9 }
    end

    assert_redirected_to quiz_path(assigns(:quiz))
  end

  test "should show quiz" do
    get :show, id: @quiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiz
    assert_response :success
  end

  test "should update quiz" do
    put :update, id: @quiz, quiz: { q0: @quiz.q0, q1: @quiz.q1, q2: @quiz.q2, q3: @quiz.q3, q4: @quiz.q4, q5: @quiz.q5, q6: @quiz.q6, q7: @quiz.q7, q8: @quiz.q8, q9: @quiz.q9 }
    assert_redirected_to quiz_path(assigns(:quiz))
  end

  test "should destroy quiz" do
    assert_difference('Quiz.count', -1) do
      delete :destroy, id: @quiz
    end

    assert_redirected_to quizzes_path
  end
end
