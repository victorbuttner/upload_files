json.array!(@uploads) do |upload|
  json.extract! upload, :id, :user_id, :description
  json.url upload_url(upload, format: :json)
end
