require 'test_helper'

class PriorityConditionsControllerTest < ActionController::TestCase
  setup do
    @priority_condition = priority_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:priority_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create priority_condition" do
    assert_difference('PriorityCondition.count') do
      post :create, priority_condition: { name: @priority_condition.name }
    end

    assert_redirected_to priority_condition_path(assigns(:priority_condition))
  end

  test "should show priority_condition" do
    get :show, id: @priority_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @priority_condition
    assert_response :success
  end

  test "should update priority_condition" do
    patch :update, id: @priority_condition, priority_condition: { name: @priority_condition.name }
    assert_redirected_to priority_condition_path(assigns(:priority_condition))
  end

  test "should destroy priority_condition" do
    assert_difference('PriorityCondition.count', -1) do
      delete :destroy, id: @priority_condition
    end

    assert_redirected_to priority_conditions_path
  end
end
