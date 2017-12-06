require 'test_helper'

class BillboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billboard_index_url
    assert_response :success
  end

end
