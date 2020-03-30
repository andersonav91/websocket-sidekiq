require 'test_helper'

class MessageControllerTest < ActionController::TestCase
  test "should get put" do
    get :put
    assert_response :success
  end

end
