require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get thanks" do
    get static_pages_thanks_url
    assert_response :success
  end

end
