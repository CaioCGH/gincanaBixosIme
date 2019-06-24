require "application_system_test_case"

class SportInterestsNewcomersTest < ApplicationSystemTestCase
  setup do
    @sport_interests_newcomer = sport_interests_newcomer(:one)
  end

  test "visiting the index" do
    visit sport_interests_newcomer_url
    assert_selector "h1", text: "Rel Newcomer Sports"
  end

  test "creating a Rel newcomer sport" do
    visit sport_interests_newcomer_url
    click_on "New Rel Newcomer Sport"

    click_on "Create Rel newcomer sport"

    assert_text "Rel newcomer sport was successfully created"
    click_on "Back"
  end

  test "updating a Rel newcomer sport" do
    visit sport_interests_newcomer_url
    click_on "Edit", match: :first

    click_on "Update Rel newcomer sport"

    assert_text "Rel newcomer sport was successfully updated"
    click_on "Back"
  end

  test "destroying a Rel newcomer sport" do
    visit sport_interests_newcomer_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rel newcomer sport was successfully destroyed"
  end
end
