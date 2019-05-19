require "application_system_test_case"

class BixesTest < ApplicationSystemTestCase
  setup do
    @bix = bixes(:one)
  end

  test "visiting the index" do
    visit bixes_url
    assert_selector "h1", text: "Bixes"
  end

  test "creating a Bixe" do
    visit bixes_url
    click_on "New Bixe"

    fill_in "Course", with: @bix.course
    check "Is valid" if @bix.is_valid
    fill_in "Name", with: @bix.name
    fill_in "Telephone", with: @bix.telephone
    check "Tutor" if @bix.tutor
    click_on "Create Bixe"

    assert_text "Bixe was successfully created"
    click_on "Back"
  end

  test "updating a Bixe" do
    visit bixes_url
    click_on "Edit", match: :first

    fill_in "Course", with: @bix.course
    check "Is valid" if @bix.is_valid
    fill_in "Name", with: @bix.name
    fill_in "Telephone", with: @bix.telephone
    check "Tutor" if @bix.tutor
    click_on "Update Bixe"

    assert_text "Bixe was successfully updated"
    click_on "Back"
  end

  test "destroying a Bixe" do
    visit bixes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bixe was successfully destroyed"
  end
end