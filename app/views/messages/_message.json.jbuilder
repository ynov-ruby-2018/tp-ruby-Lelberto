json.extract! message, :id, :content, :listing_id, :sender_id, :created_at, :updated_at
json.url message_url(message, format: :json)
