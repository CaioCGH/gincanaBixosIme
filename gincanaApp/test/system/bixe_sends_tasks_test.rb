require "application_system_test_case"

class NewcomerSendsTasksTest < ApplicationSystemTestCase
  setup do
    @newcomer_sends_task = newcomer_sends_tasks(:one)
  end

  test "visiting the index" do
    visit newcomer_sends_tasks_url
    assert_selector "h1", text: "Newcomer Sends Tasks"
  end

  test "creating a Newcomer sends task" do
    visit newcomer_sends_tasks_url
    click_on "New Newcomer Sends Task"

    fill_in "Newcomer", with: @newcomer_sends_task.newcomer_id
    fill_in "Integer", with: @newcomer_sends_task.integer
    check "Is valid" if @newcomer_sends_task.is_valid
    fill_in "Score", with: @newcomer_sends_task.score
    fill_in "Task", with: @newcomer_sends_task.task_id
    click_on "Create Newcomer sends task"

    assert_text "Newcomer sends task was successfully created"
    click_on "Back"
  end

  test "updating a Newcomer sends task" do
    visit newcomer_sends_tasks_url
    click_on "Edit", match: :first

    fill_in "Newcomer", with: @newcomer_sends_task.newcomer_id
    fill_in "Integer", with: @newcomer_sends_task.integer
    check "Is valid" if @newcomer_sends_task.is_valid
    fill_in "Score", with: @newcomer_sends_task.score
    fill_in "Task", with: @newcomer_sends_task.task_id
    click_on "Update Newcomer sends task"

    assert_text "Newcomer sends task was successfully updated"
    click_on "Back"
  end

  test "destroying a Newcomer sends task" do
    visit newcomer_sends_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newcomer sends task was successfully destroyed"
  end
end
