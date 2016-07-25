require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get fibonacci" do
    get home_fibonacci_url
    assert_response :success
  end

end
