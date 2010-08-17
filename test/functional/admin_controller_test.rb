require 'test_helper'

class AdminControllerTest < ActionController::TestCase

  test "index without user" do
    get :index
    assert_redirected_to :action => "login"
    assert_equal "Please log in", flash[:notice]
  end
end
