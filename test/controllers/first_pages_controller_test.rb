require 'test_helper'

class FirstPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_page = first_pages(:one)
  end

  test "should get index" do
    get first_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_first_page_url
    assert_response :success
  end

  test "should create first_page" do
    assert_difference('FirstPage.count') do
      post first_pages_url, params: { first_page: {  } }
    end

    assert_redirected_to first_page_url(FirstPage.last)
  end

  test "should show first_page" do
    get first_page_url(@first_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_page_url(@first_page)
    assert_response :success
  end

  test "should update first_page" do
    patch first_page_url(@first_page), params: { first_page: {  } }
    assert_redirected_to first_page_url(@first_page)
  end

  test "should destroy first_page" do
    assert_difference('FirstPage.count', -1) do
      delete first_page_url(@first_page)
    end

    assert_redirected_to first_pages_url
  end
end
