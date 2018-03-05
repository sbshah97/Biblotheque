require 'test_helper'

class CategoryDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_detail = category_details(:one)
  end

  test "should get index" do
    get category_details_url
    assert_response :success
  end

  test "should get new" do
    get new_category_detail_url
    assert_response :success
  end

  test "should create category_detail" do
    assert_difference('CategoryDetail.count') do
      post category_details_url, params: { category_detail: { name: @category_detail.name } }
    end

    assert_redirected_to category_detail_url(CategoryDetail.last)
  end

  test "should show category_detail" do
    get category_detail_url(@category_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_detail_url(@category_detail)
    assert_response :success
  end

  test "should update category_detail" do
    patch category_detail_url(@category_detail), params: { category_detail: { name: @category_detail.name } }
    assert_redirected_to category_detail_url(@category_detail)
  end

  test "should destroy category_detail" do
    assert_difference('CategoryDetail.count', -1) do
      delete category_detail_url(@category_detail)
    end

    assert_redirected_to category_details_url
  end
end
