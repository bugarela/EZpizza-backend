# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pedido.create(email: "aa@aa.com", endereco: "rua")
Sabor.create(nome: "Calabresa", preco_adicional: 1.25, ingredientes: "Calabresa, mussarela e cebola")
