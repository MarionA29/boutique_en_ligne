require 'test_helper'

class CartsItemControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carts_item_show_url
    assert_response :success
  end

end
