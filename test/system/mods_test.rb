require "application_system_test_case"

class ModsTest < ApplicationSystemTestCase
  setup do
    @mod = mods(:one)
  end

  test "visiting the index" do
    visit mods_url
    assert_selector "h1", text: "Mods"
  end

  test "creating a Mod" do
    visit mods_url
    click_on "New Mod"

    fill_in "Bgcolor", with: @mod.bgcolor
    fill_in "Icon", with: @mod.icon
    fill_in "Name", with: @mod.name
    fill_in "Table", with: @mod.table_id
    fill_in "Title", with: @mod.title
    click_on "Create Mod"

    assert_text "Mod was successfully created"
    click_on "Back"
  end

  test "updating a Mod" do
    visit mods_url
    click_on "Edit", match: :first

    fill_in "Bgcolor", with: @mod.bgcolor
    fill_in "Icon", with: @mod.icon
    fill_in "Name", with: @mod.name
    fill_in "Table", with: @mod.table_id
    fill_in "Title", with: @mod.title
    click_on "Update Mod"

    assert_text "Mod was successfully updated"
    click_on "Back"
  end

  test "destroying a Mod" do
    visit mods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mod was successfully destroyed"
  end
end
