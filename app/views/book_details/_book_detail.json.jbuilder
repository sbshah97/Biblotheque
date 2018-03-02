json.extract! book_detail, :id, :book_id, :book_title, :publication_year, :language, :category_type, :binding_id, :no_of_copies_stored, :no_of_copies_present, :created_at, :updated_at
json.url book_detail_url(book_detail, format: :json)
