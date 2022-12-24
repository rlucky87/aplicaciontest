require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get restaurant" do
    get booking_restaurant_url
    assert_response :success
  end
end
