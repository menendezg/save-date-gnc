require "test_helper"

class ContactFormControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get "/contact_form/new"
    assert_response :success
  end
end
