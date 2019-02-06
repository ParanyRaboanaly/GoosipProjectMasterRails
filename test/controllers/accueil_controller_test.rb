require 'test_helper'

class AccueilControllerTest < ActionDispatch::IntegrationTest
  test "should get p1" do
    get accueil_p1_url
    assert_response :success
  end

end
