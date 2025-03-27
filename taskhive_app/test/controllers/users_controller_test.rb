require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get registration page" do
    get createAccount_path
    assert_response :success
  end

  test "should create user and redirect to login" do
    assert_difference('User.count', 1) do
      post users_path, params: {
        user: {
          email_address: "testuser@example.com",
          password: "password",
          password_confirmation: "password"
        }
      }
    end
    assert_redirected_to login_path
    follow_redirect!
    assert_response :success
    assert_match "Account created successfully", flash[:notice]
  end
end
