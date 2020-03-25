require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get follow" do
    get :follow
    assert_response :success
  end

end
