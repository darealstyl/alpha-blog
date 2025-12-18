require "test_helper"

class NewArticleCreationTest < ActionDispatch::IntegrationTest
  setup do
    @regular_user = User.create(username: "John", email: "johndoe@example.com", password: "asd123", admin: false)
    @category = Category.create(name: "Sports")
  end

  test "get the new article form and create article" do
    sign_in_as(@regular_user)
    get "/articles/new"
    assert_response :success
    assert_difference "Article.count", 1 do
      post articles_path, params: { article: { title: "i like sports", description: "sports are the best!", categories: ["Sports"] } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "i like sports", response.body
  end
end
