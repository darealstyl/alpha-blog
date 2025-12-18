require "test_helper"

class UserSignUpTest < ActionDispatch::IntegrationTest
  test "get the signup page and create a new user" do
    get "/signup"
    assert_response :success
    assert_difference "User.count", 1 do
      post users_path, params: { user: { username: "john", email: "johndoee@example.com", password: "asd123" } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "john's profile", response.body
  end
end
