json.extract! movimentacao_estoque, :id, :data, :quantidade, :pessoa_id, :operacao_id, :produto_id, :created_at, :updated_at
json.url movimentacao_estoque_url(movimentacao_estoque, format: :json)
