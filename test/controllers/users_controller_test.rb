require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get novo" do
    get cadastro_path
    assert_response :success
  end

end
