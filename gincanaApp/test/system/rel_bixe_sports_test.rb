require "application_system_test_case"

class RelBixeSportsTest < ApplicationSystemTestCase
  setup do
    @rel_bixe_sport = rel_bixe_sports(:one)
  end

  test "visiting the index" do
    visit rel_bixe_sports_url
    assert_selector "h1", text: "Rel Bixe Sports"
  end

  test "creating a Rel bixe sport" do
    visit rel_bixe_sports_url
    click_on "New Rel Bixe Sport"

    click_on "Create Rel bixe sport"

    assert_text "Rel bixe sport was successfully created"
    click_on "Back"
  end

  test "updating a Rel bixe sport" do
    visit rel_bixe_sports_url
    click_on "Edit", match: :first

    click_on "Update Rel bixe sport"

    assert_text "Rel bixe sport was successfully updated"
    click_on "Back"
  end

  test "destroying a Rel bixe sport" do
    visit rel_bixe_sports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rel bixe sport was successfully destroyed"
  end
end
