require "application_system_test_case"

class BixeSendsTasksTest < ApplicationSystemTestCase
  setup do
    @bixe_sends_task = bixe_sends_tasks(:one)
  end

  test "visiting the index" do
    visit bixe_sends_tasks_url
    assert_selector "h1", text: "Bixe Sends Tasks"
  end

  test "creating a Bixe sends task" do
    visit bixe_sends_tasks_url
    click_on "New Bixe Sends Task"

    fill_in "Bixe", with: @bixe_sends_task.bixe_id
    fill_in "Integer", with: @bixe_sends_task.integer
    check "Is valid" if @bixe_sends_task.is_valid
    fill_in "Score", with: @bixe_sends_task.score
    fill_in "Task", with: @bixe_sends_task.task_id
    click_on "Create Bixe sends task"

    assert_text "Bixe sends task was successfully created"
    click_on "Back"
  end

  test "updating a Bixe sends task" do
    visit bixe_sends_tasks_url
    click_on "Edit", match: :first

    fill_in "Bixe", with: @bixe_sends_task.bixe_id
    fill_in "Integer", with: @bixe_sends_task.integer
    check "Is valid" if @bixe_sends_task.is_valid
    fill_in "Score", with: @bixe_sends_task.score
    fill_in "Task", with: @bixe_sends_task.task_id
    click_on "Update Bixe sends task"

    assert_text "Bixe sends task was successfully updated"
    click_on "Back"
  end

  test "destroying a Bixe sends task" do
    visit bixe_sends_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bixe sends task was successfully destroyed"
  end
end
