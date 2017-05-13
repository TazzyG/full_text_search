json.extract! comment, :id, :author_id, :name, :content, :published_at, :created_at, :updated_at
json.url comment_url(comment, format: :json)
