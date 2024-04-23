json.extract! reportage, :id, :title, :description, :contents, :user_id, :created_at, :updated_at
json.url reportage_url(reportage, format: :json)
json.contents do
  json.array!(reportage.contents) do |content|
    json.id content.id
    json.url url_for(content)
  end
end
