require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  test "should get open" do
    get :open
    assert_response :success
  end

end
