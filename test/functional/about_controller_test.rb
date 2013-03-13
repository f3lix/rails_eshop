require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end
  test "should get index" do
    get :index
    assert_response :success
  end

end
