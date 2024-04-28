json.extract! emission_content, :id, :title, :description, :content, :user_id, :emission_id, :created_at, :updated_at
json.url emission_content_url(emission_content, format: :json)
json.content url_for(emission_content.content)
