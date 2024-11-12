require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get client" do
    get pages_client_url
    assert_response :success
  end

  test "should get review" do
    get pages_review_url
    assert_response :success
  end

  test "should get work" do
    get pages_work_url
    assert_response :success
  end

  test "should get job" do
    get pages_job_url
    assert_response :success
  end

  test "should get press" do
    get pages_press_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end
end
