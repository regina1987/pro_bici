require 'test_helper'

class ScaffoldControllerTest < ActionDispatch::IntegrationTest
  test "should get category" do
    get scaffold_category_url
    assert_response :success
  end

end
