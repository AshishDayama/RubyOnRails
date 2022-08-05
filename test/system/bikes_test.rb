require "application_system_test_case"

class BikesTest < ApplicationSystemTestCase
  setup do
    @bike = bikes(:one)
  end

  test "visiting the index" do
    visit bikes_url
    assert_selector "h1", text: "Bikes"
  end

  test "should create bike" do
    visit bikes_url
    click_on "New bike"

    fill_in "Brand", with: @bike.brand
    fill_in "Model", with: @bike.model
    fill_in "Year", with: @bike.year
    click_on "Create Bike"

    assert_text "Bike was successfully created"
    click_on "Back"
  end

  test "should update Bike" do
    visit bike_url(@bike)
    click_on "Edit this bike", match: :first

    fill_in "Brand", with: @bike.brand
    fill_in "Model", with: @bike.model
    fill_in "Year", with: @bike.year
    click_on "Update Bike"

    assert_text "Bike was successfully updated"
    click_on "Back"
  end

  test "should destroy Bike" do
    visit bike_url(@bike)
    click_on "Destroy this bike", match: :first

    assert_text "Bike was successfully destroyed"
  end
end
