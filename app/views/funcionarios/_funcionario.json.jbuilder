json.extract! funcionario, :id, :nome, :cpf, :nascimento, :email, :cargo_id, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
