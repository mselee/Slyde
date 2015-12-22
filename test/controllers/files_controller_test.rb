require 'test_helper'

class FilesControllerTest < ActionController::TestCase
  test "should get images" do
    get :images
    assert_response :success
  end

end
