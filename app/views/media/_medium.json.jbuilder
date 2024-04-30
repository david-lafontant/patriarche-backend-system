json.extract! medium, :id, :title, :description, :content, :user_id, :emission_id, :created_at, :updated_at
json.url medium_url(medium, format: :json)
json.content url_for(medium.content)
