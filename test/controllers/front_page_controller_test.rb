require 'test_helper'

class FrontPageControllerTest < ActionDispatch::IntegrationTest
  test "should get method" do
    get front_page_method_url
    assert_response :success
  end

end
