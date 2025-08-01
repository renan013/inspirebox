require "test_helper"

class QuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quotes_url
    assert_response :success
  end
end
