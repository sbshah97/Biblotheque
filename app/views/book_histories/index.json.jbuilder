json.array!(@book_histories) do |book_history|
  json.extract! book_history, :id, :book_id, :chk_out_dt, :chk_in_date, :user_id
  json.url book_history_url(book_history, format: :json)
end
