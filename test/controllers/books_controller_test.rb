require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get books_create_url
    assert_response :success
  end

  test "should get assign_to_student" do
    get books_assign_to_student_url
    assert_response :success
  end
end
