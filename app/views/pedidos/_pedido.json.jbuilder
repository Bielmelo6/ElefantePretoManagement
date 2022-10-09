json.extract! pedido, :id, :item_id, :cliente_id, :total, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
