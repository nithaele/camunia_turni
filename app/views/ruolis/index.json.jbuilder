json.array!(@ruolis) do |ruoli|
  json.extract! ruoli, :id, :ruolo, :user_id
  json.url ruoli_url(ruoli, format: :json)
end
