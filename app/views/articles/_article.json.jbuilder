json.extract! article, :id, :title, :subltitle, :description, :contenu, :contents, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)
json.contents do
  json.array!(article.contents) do |content|
    json.id content.id
    json.url url_for(content)
  end
end
