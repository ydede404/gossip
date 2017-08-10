require 'test_helper'

class RagotsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ragots_new_url
    assert_response :success
  end

end
