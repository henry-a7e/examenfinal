require "test_helper"

class TransmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transmission = transmissions(:one)
  end

  test "should get index" do
    get transmissions_url
    assert_response :success
  end

  test "should get new" do
    get new_transmission_url
    assert_response :success
  end

  test "should create transmission" do
    assert_difference('Transmission.count') do
      post transmissions_url, params: { transmission: { date: @transmission.date, program_number: @transmission.program_number } }
    end

    assert_redirected_to transmission_url(Transmission.last)
  end

  test "should show transmission" do
    get transmission_url(@transmission)
    assert_response :success
  end

  test "should get edit" do
    get edit_transmission_url(@transmission)
    assert_response :success
  end

  test "should update transmission" do
    patch transmission_url(@transmission), params: { transmission: { date: @transmission.date, program_number: @transmission.program_number } }
    assert_redirected_to transmission_url(@transmission)
  end

  test "should destroy transmission" do
    assert_difference('Transmission.count', -1) do
      delete transmission_url(@transmission)
    end

    assert_redirected_to transmissions_url
  end
end
