require 'test_helper'

class BixeSendsTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bixe_sends_task = bixe_sends_tasks(:one)
  end

  test "should get index" do
    get bixe_sends_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_bixe_sends_task_url
    assert_response :success
  end

  test "should create bixe_sends_task" do
    assert_difference('BixeSendsTask.count') do
      post bixe_sends_tasks_url, params: { bixe_sends_task: { bixe_id: @bixe_sends_task.bixe_id, integer: @bixe_sends_task.integer, is_valid: @bixe_sends_task.is_valid, score: @bixe_sends_task.score, task_id: @bixe_sends_task.task_id } }
    end

    assert_redirected_to bixe_sends_task_url(BixeSendsTask.last)
  end

  test "should show bixe_sends_task" do
    get bixe_sends_task_url(@bixe_sends_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_bixe_sends_task_url(@bixe_sends_task)
    assert_response :success
  end

  test "should update bixe_sends_task" do
    patch bixe_sends_task_url(@bixe_sends_task), params: { bixe_sends_task: { bixe_id: @bixe_sends_task.bixe_id, integer: @bixe_sends_task.integer, is_valid: @bixe_sends_task.is_valid, score: @bixe_sends_task.score, task_id: @bixe_sends_task.task_id } }
    assert_redirected_to bixe_sends_task_url(@bixe_sends_task)
  end

  test "should destroy bixe_sends_task" do
    assert_difference('BixeSendsTask.count', -1) do
      delete bixe_sends_task_url(@bixe_sends_task)
    end

    assert_redirected_to bixe_sends_tasks_url
  end
end
