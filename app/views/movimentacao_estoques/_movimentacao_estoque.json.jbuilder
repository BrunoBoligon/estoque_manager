json.extract! movimentacao_estoque, :id, :data, :quantidade, :operacao_id, :produto_id, :pessoa_id, :created_at, :updated_at
json.url movimentacao_estoque_url(movimentacao_estoque, format: :json)
