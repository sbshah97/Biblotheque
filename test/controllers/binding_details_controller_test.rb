require 'test_helper'

class BindingDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @binding_detail = binding_details(:one)
  end

  test "should get index" do
    get binding_details_url
    assert_response :success
  end

  test "should get new" do
    get new_binding_detail_url
    assert_response :success
  end

  test "should create binding_detail" do
    assert_difference('BindingDetail.count') do
      post binding_details_url, params: { binding_detail: { name: @binding_detail.name } }
    end

    assert_redirected_to binding_detail_url(BindingDetail.last)
  end

  test "should show binding_detail" do
    get binding_detail_url(@binding_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_binding_detail_url(@binding_detail)
    assert_response :success
  end

  test "should update binding_detail" do
    patch binding_detail_url(@binding_detail), params: { binding_detail: { name: @binding_detail.name } }
    assert_redirected_to binding_detail_url(@binding_detail)
  end

  test "should destroy binding_detail" do
    assert_difference('BindingDetail.count', -1) do
      delete binding_detail_url(@binding_detail)
    end

    assert_redirected_to binding_details_url
  end
end
