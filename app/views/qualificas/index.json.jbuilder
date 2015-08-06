json.array!(@qualificas) do |qualifica|
  json.extract! qualifica, :id, :qualifica, :user_id
  json.url qualifica_url(qualifica, format: :json)
end
