json.extract! pessoa, :id, :endereco_id, :nome, :documento, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
