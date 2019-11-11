json.extract! produto, :id, :grupo_produto_id, :nome, :unidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
