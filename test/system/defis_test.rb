require "application_system_test_case"

class DefisTest < ApplicationSystemTestCase
  setup do
    @defi = defis(:one)
  end

  test "visiting the index" do
    visit defis_url
    assert_selector "h1", text: "Defis"
  end

  test "creating a Defi" do
    visit defis_url
    click_on "New Defi"

    fill_in "Name", with: @defi.name
    fill_in "User", with: @defi.user_id
    click_on "Create Defi"

    assert_text "Defi was successfully created"
    click_on "Back"
  end

  test "updating a Defi" do
    visit defis_url
    click_on "Edit", match: :first

    fill_in "Name", with: @defi.name
    fill_in "User", with: @defi.user_id
    click_on "Update Defi"

    assert_text "Defi was successfully updated"
    click_on "Back"
  end

  test "destroying a Defi" do
    visit defis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Defi was successfully destroyed"
  end
end
