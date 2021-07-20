require "application_system_test_case"

class PersonGarmentsTest < ApplicationSystemTestCase
  setup do
    @person_garment = person_garments(:one)
  end

  test "visiting the index" do
    visit person_garments_url
    assert_selector "h1", text: "Person Garments"
  end

  test "creating a Person garment" do
    visit person_garments_url
    click_on "New Person Garment"

    fill_in "Garment", with: @person_garment.garment_id
    fill_in "Person", with: @person_garment.person_id
    fill_in "Transmission", with: @person_garment.transmission_id
    click_on "Create Person garment"

    assert_text "Person garment was successfully created"
    click_on "Back"
  end

  test "updating a Person garment" do
    visit person_garments_url
    click_on "Edit", match: :first

    fill_in "Garment", with: @person_garment.garment_id
    fill_in "Person", with: @person_garment.person_id
    fill_in "Transmission", with: @person_garment.transmission_id
    click_on "Update Person garment"

    assert_text "Person garment was successfully updated"
    click_on "Back"
  end

  test "destroying a Person garment" do
    visit person_garments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person garment was successfully destroyed"
  end
end
