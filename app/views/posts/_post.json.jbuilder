json.extract! post, :id, :title, :description,:author, :b_subject, :user_id, :attachment, :created_at, :updated_at
json.url post_url(post, format: :json)
