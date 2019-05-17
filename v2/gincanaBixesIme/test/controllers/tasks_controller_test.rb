require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { description: @task.description, group: @task.group, have_feedback: @task.have_feedback, have_score: @task.have_score, max_send: @task.max_send, name: @task.name, score_type: @task.score_type, send: @task.send } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { description: @task.description, group: @task.group, have_feedback: @task.have_feedback, have_score: @task.have_score, max_send: @task.max_send, name: @task.name, score_type: @task.score_type, send: @task.send } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
