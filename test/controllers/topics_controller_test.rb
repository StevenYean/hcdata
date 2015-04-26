require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
  setup do
    @topic = topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post :create, topic: { comparators: @topic.comparators, healthImpact: @topic.healthImpact, intervention: @topic.intervention, patientPopulation: @topic.patientPopulation, phase: @topic.phase, phaseDetails: @topic.phaseDetails, priorityConditionID: @topic.priorityConditionID, priorityConditionID: @topic.priorityConditionID, status: @topic.status, topicTitle: @topic.topicTitle }
    end

    assert_redirected_to topic_path(assigns(:topic))
  end

  test "should show topic" do
    get :show, id: @topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic
    assert_response :success
  end

  test "should update topic" do
    patch :update, id: @topic, topic: { comparators: @topic.comparators, healthImpact: @topic.healthImpact, intervention: @topic.intervention, patientPopulation: @topic.patientPopulation, phase: @topic.phase, phaseDetails: @topic.phaseDetails, priorityConditionID: @topic.priorityConditionID, priorityConditionID: @topic.priorityConditionID, status: @topic.status, topicTitle: @topic.topicTitle }
    assert_redirected_to topic_path(assigns(:topic))
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete :destroy, id: @topic
    end

    assert_redirected_to topics_path
  end
end
