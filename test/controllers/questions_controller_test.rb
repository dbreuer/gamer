require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get end" do
    get :end
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get detroy" do
    get :detroy
    assert_response :success
  end

end
