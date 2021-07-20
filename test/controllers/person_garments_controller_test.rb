require "test_helper"

class PersonGarmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_garment = person_garments(:one)
  end

  test "should get index" do
    get person_garments_url
    assert_response :success
  end

  test "should get new" do
    get new_person_garment_url
    assert_response :success
  end

  test "should create person_garment" do
    assert_difference('PersonGarment.count') do
      post person_garments_url, params: { person_garment: { garment_id: @person_garment.garment_id, person_id: @person_garment.person_id, transmission_id: @person_garment.transmission_id } }
    end

    assert_redirected_to person_garment_url(PersonGarment.last)
  end

  test "should show person_garment" do
    get person_garment_url(@person_garment)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_garment_url(@person_garment)
    assert_response :success
  end

  test "should update person_garment" do
    patch person_garment_url(@person_garment), params: { person_garment: { garment_id: @person_garment.garment_id, person_id: @person_garment.person_id, transmission_id: @person_garment.transmission_id } }
    assert_redirected_to person_garment_url(@person_garment)
  end

  test "should destroy person_garment" do
    assert_difference('PersonGarment.count', -1) do
      delete person_garment_url(@person_garment)
    end

    assert_redirected_to person_garments_url
  end
end
