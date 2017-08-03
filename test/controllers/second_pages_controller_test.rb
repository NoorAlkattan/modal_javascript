require 'test_helper'

class SecondPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @second_page = second_pages(:one)
  end

  test "should get index" do
    get second_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_second_page_url
    assert_response :success
  end

  test "should create second_page" do
    assert_difference('SecondPage.count') do
      post second_pages_url, params: { second_page: {  } }
    end

    assert_redirected_to second_page_url(SecondPage.last)
  end

  test "should show second_page" do
    get second_page_url(@second_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_second_page_url(@second_page)
    assert_response :success
  end

  test "should update second_page" do
    patch second_page_url(@second_page), params: { second_page: {  } }
    assert_redirected_to second_page_url(@second_page)
  end

  test "should destroy second_page" do
    assert_difference('SecondPage.count', -1) do
      delete second_page_url(@second_page)
    end

    assert_redirected_to second_pages_url
  end
end
