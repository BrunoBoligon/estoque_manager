json.extract! operacao, :id, :nome, :tipo, :created_at, :updated_at
json.url operacao_url(operacao, format: :json)
