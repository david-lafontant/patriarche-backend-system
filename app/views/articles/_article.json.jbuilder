json.extract! article, :id, :title, :subtitle, :description, :texte, :user_id, :content_id, :created_at, :updated_at
json.url article_url(article, format: :json)
