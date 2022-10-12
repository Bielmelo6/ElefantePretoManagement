# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
dono = Dono.create(nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100', email: "teste1@teste1.com", password: "teste123", password_confirmation: "teste123")
cargo = Cargo.create(funcao: "cozinheiro",salario: "1500")
cliente = Cliente.create(nome: 'ivan do nascimento',cpf: '161169850-25')
funcionario = Funcionario.create(nome: 'Alice Morais', email: 'teste789@teste.com',
                                 nascimento: Date.parse("Feb 11 1995"), cpf: '84127420014',
                                 dono_id: dono.id ,cargo_id: cargo.id)
item = Item.create(produto: 'paçoca', valor: 1)
pedido = Pedido.create(item_id: item.id,cliente_id: cliente.id, quantidade: 2)