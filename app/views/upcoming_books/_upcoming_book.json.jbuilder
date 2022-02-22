json.extract! upcoming_book, :id, :title, :description, :author, :b_subject, :attachment, :user_id, :created_at, :updated_at
json.url upcoming_book_url(upcoming_book, format: :json)
