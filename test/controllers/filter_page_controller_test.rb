require 'test_helper'

class FilterPageControllerTest < ActionDispatch::IntegrationTest
  test "should get method" do
    get filter_page_method_url
    assert_response :success
  end

end
