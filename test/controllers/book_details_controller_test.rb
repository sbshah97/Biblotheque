require 'test_helper'

class BookDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_detail = book_details(:one)
  end

  test "should get index" do
    get book_details_url
    assert_response :success
  end

  test "should get new" do
    get new_book_detail_url
    assert_response :success
  end

  test "should create book_detail" do
    assert_difference('BookDetail.count') do
      post book_details_url, params: { book_detail: { binding_id: @book_detail.binding_id, book_id: @book_detail.book_id, book_title: @book_detail.book_title, category_type: @book_detail.category_type, language: @book_detail.language, no_of_copies_present: @book_detail.no_of_copies_present, no_of_copies_stored: @book_detail.no_of_copies_stored, publication_year: @book_detail.publication_year } }
    end

    assert_redirected_to book_detail_url(BookDetail.last)
  end

  test "should show book_detail" do
    get book_detail_url(@book_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_detail_url(@book_detail)
    assert_response :success
  end

  test "should update book_detail" do
    patch book_detail_url(@book_detail), params: { book_detail: { binding_id: @book_detail.binding_id, book_id: @book_detail.book_id, book_title: @book_detail.book_title, category_type: @book_detail.category_type, language: @book_detail.language, no_of_copies_present: @book_detail.no_of_copies_present, no_of_copies_stored: @book_detail.no_of_copies_stored, publication_year: @book_detail.publication_year } }
    assert_redirected_to book_detail_url(@book_detail)
  end

  test "should destroy book_detail" do
    assert_difference('BookDetail.count', -1) do
      delete book_detail_url(@book_detail)
    end

    assert_redirected_to book_details_url
  end
end
