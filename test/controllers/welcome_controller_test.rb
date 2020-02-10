require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get :id" do
    get welcome_:id_url
    assert_response :success
  end

end
