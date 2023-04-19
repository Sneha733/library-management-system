require "application_system_test_case"

class StudsTest < ApplicationSystemTestCase
  setup do
    @stud = studs(:one)
  end

  test "visiting the index" do
    visit studs_url
    assert_selector "h1", text: "Studs"
  end

  test "should create stud" do
    visit studs_url
    click_on "New stud"

    fill_in "Stud address", with: @stud.stud_address
    fill_in "Stud name", with: @stud.stud_name
    click_on "Create Stud"

    assert_text "Stud was successfully created"
    click_on "Back"
  end

  test "should update Stud" do
    visit stud_url(@stud)
    click_on "Edit this stud", match: :first

    fill_in "Stud address", with: @stud.stud_address
    fill_in "Stud name", with: @stud.stud_name
    click_on "Update Stud"

    assert_text "Stud was successfully updated"
    click_on "Back"
  end

  test "should destroy Stud" do
    visit stud_url(@stud)
    click_on "Destroy this stud", match: :first

    assert_text "Stud was successfully destroyed"
  end
end
