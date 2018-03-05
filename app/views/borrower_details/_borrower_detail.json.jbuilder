json.extract! borrower_detail, :id, :borrower_id, :book_id, :borrowed_from, :borrowed_to, :actual_return_date, :issued_by, :created_at, :updated_at
json.url borrower_detail_url(borrower_detail, format: :json)
