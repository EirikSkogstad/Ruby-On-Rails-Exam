require 'test_helper'

class MyPageControllerTest < ActionDispatch::IntegrationTest
  test "should get method" do
    get my_page_method_url
    assert_response :success
  end

end
