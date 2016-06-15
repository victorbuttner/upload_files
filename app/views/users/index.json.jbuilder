json.array!(@users) do |user|
  json.extract! user, :id, :name, :cpf, :telefone
  json.url user_url(user, format: :json)
end
