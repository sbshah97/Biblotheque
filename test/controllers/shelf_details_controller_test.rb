require 'test_helper'

class ShelfDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shelf_detail = shelf_details(:one)
  end

  test "should get index" do
    get shelf_details_url
    assert_response :success
  end

  test "should get new" do
    get new_shelf_detail_url
    assert_response :success
  end

  test "should create shelf_detail" do
    assert_difference('ShelfDetail.count') do
      post shelf_details_url, params: { shelf_detail: { address: @shelf_detail.address } }
    end

    assert_redirected_to shelf_detail_url(ShelfDetail.last)
  end

  test "should show shelf_detail" do
    get shelf_detail_url(@shelf_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_shelf_detail_url(@shelf_detail)
    assert_response :success
  end

  test "should update shelf_detail" do
    patch shelf_detail_url(@shelf_detail), params: { shelf_detail: { address: @shelf_detail.address } }
    assert_redirected_to shelf_detail_url(@shelf_detail)
  end

  test "should destroy shelf_detail" do
    assert_difference('ShelfDetail.count', -1) do
      delete shelf_detail_url(@shelf_detail)
    end

    assert_redirected_to shelf_details_url
  end
end
