require 'test_helper'

class NewcomerSendsTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newcomer_sends_task = newcomer_sends_tasks(:one)
  end

  test "should get index" do
    get newcomer_sends_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_newcomer_sends_task_url
    assert_response :success
  end

  test "should create newcomer_sends_task" do
    assert_difference('NewcomerSendsTask.count') do
      post newcomer_sends_tasks_url, params: { newcomer_sends_task: { newcomer_id: @newcomer_sends_task.newcomer_id, integer: @newcomer_sends_task.integer, is_valid: @newcomer_sends_task.is_valid, score: @newcomer_sends_task.score, task_id: @newcomer_sends_task.task_id } }
    end

    assert_redirected_to newcomer_sends_task_url(NewcomerSendsTask.last)
  end

  test "should show newcomer_sends_task" do
    get newcomer_sends_task_url(@newcomer_sends_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_newcomer_sends_task_url(@newcomer_sends_task)
    assert_response :success
  end

  test "should update newcomer_sends_task" do
    patch newcomer_sends_task_url(@newcomer_sends_task), params: { newcomer_sends_task: { newcomer_id: @newcomer_sends_task.newcomer_id, integer: @newcomer_sends_task.integer, is_valid: @newcomer_sends_task.is_valid, score: @newcomer_sends_task.score, task_id: @newcomer_sends_task.task_id } }
    assert_redirected_to newcomer_sends_task_url(@newcomer_sends_task)
  end

  test "should destroy newcomer_sends_task" do
    assert_difference('NewcomerSendsTask.count', -1) do
      delete newcomer_sends_task_url(@newcomer_sends_task)
    end

    assert_redirected_to newcomer_sends_tasks_url
  end
end
