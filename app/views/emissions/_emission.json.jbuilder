json.extract! emission, :id, :title, :description, :poster, :user_id, :created_at, :updated_at
json.url emission_url(emission, format: :json)
json.poster url_for(emission.poster)
