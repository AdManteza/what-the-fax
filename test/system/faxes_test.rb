require "application_system_test_case"

class FaxesTest < ApplicationSystemTestCase
  setup do
    @fax = faxes(:one)
  end

  test "visiting the index" do
    visit faxes_url
    assert_selector "h1", text: "Faxes"
  end

  test "creating a Fax" do
    visit faxes_url
    click_on "New Fax"

    click_on "Create Fax"

    assert_text "Fax was successfully created"
    click_on "Back"
  end

  test "updating a Fax" do
    visit faxes_url
    click_on "Edit", match: :first

    click_on "Update Fax"

    assert_text "Fax was successfully updated"
    click_on "Back"
  end

  test "destroying a Fax" do
    visit faxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fax was successfully destroyed"
  end
end
