require "test_helper"

class StudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stud = studs(:one)
  end

  test "should get index" do
    get studs_url
    assert_response :success
  end

  test "should get new" do
    get new_stud_url
    assert_response :success
  end

  test "should create stud" do
    assert_difference("Stud.count") do
      post studs_url, params: { stud: { stud_address: @stud.stud_address, stud_name: @stud.stud_name } }
    end

    assert_redirected_to stud_url(Stud.last)
  end

  test "should show stud" do
    get stud_url(@stud)
    assert_response :success
  end

  test "should get edit" do
    get edit_stud_url(@stud)
    assert_response :success
  end

  test "should update stud" do
    patch stud_url(@stud), params: { stud: { stud_address: @stud.stud_address, stud_name: @stud.stud_name } }
    assert_redirected_to stud_url(@stud)
  end

  test "should destroy stud" do
    assert_difference("Stud.count", -1) do
      delete stud_url(@stud)
    end

    assert_redirected_to studs_url
  end
end
