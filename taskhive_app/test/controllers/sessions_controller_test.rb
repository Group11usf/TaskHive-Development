require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create!(
      email_address: "sessiontest@example.com",
      password: "password",
      password_confirmation: "password"
    )
  end

  test "should get login page" do
    get login_path
    assert_response :success
  end

  test "should log in user with valid credentials" do
    post login_path, params: { 
      email_address: @user.email_address, 
      password: "password" 
    }
    assert_redirected_to root_path
  end

  test "should not log in user with invalid credentials" do
    post login_path, params: { 
      email_address: @user.email_address, 
      password: "wrongpassword" 
    }
    assert_response :success
    # Adjust the following assertion if your view displays a specific message.
    assert_match /Invalid/i, response.body
  end
end
