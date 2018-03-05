require 'test_helper'

class BorrowerDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrower_detail = borrower_details(:one)
  end

  test "should get index" do
    get borrower_details_url
    assert_response :success
  end

  test "should get new" do
    get new_borrower_detail_url
    assert_response :success
  end

  test "should create borrower_detail" do
    assert_difference('BorrowerDetail.count') do
      post borrower_details_url, params: { borrower_detail: { actual_return_date: @borrower_detail.actual_return_date, book_id: @borrower_detail.book_id, borrowed_from: @borrower_detail.borrowed_from, borrowed_to: @borrower_detail.borrowed_to, borrower_id: @borrower_detail.borrower_id, issued_by: @borrower_detail.issued_by } }
    end

    assert_redirected_to borrower_detail_url(BorrowerDetail.last)
  end

  test "should show borrower_detail" do
    get borrower_detail_url(@borrower_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrower_detail_url(@borrower_detail)
    assert_response :success
  end

  test "should update borrower_detail" do
    patch borrower_detail_url(@borrower_detail), params: { borrower_detail: { actual_return_date: @borrower_detail.actual_return_date, book_id: @borrower_detail.book_id, borrowed_from: @borrower_detail.borrowed_from, borrowed_to: @borrower_detail.borrowed_to, borrower_id: @borrower_detail.borrower_id, issued_by: @borrower_detail.issued_by } }
    assert_redirected_to borrower_detail_url(@borrower_detail)
  end

  test "should destroy borrower_detail" do
    assert_difference('BorrowerDetail.count', -1) do
      delete borrower_detail_url(@borrower_detail)
    end

    assert_redirected_to borrower_details_url
  end
end
