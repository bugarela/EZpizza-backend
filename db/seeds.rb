# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sabor.create(nome: 'Calabresa', preco_adicional: 0, ingredientes: 'Molho de tomate, calabresa fatiada, cebola, orégano e azeitonas pretas.')
Sabor.create(nome: '4 queijos', preco_adicional: 0, ingredientes: 'Molho de tomate, gorgonzola, catupiry, provolone, muzzarela especial, orégano e azeitonas pretas.')
Sabor.create(nome: 'Peperoni', preco_adicional: 4.75, ingredientes: 'Molho de tomate, muzzarela especial, coberta com salame pepperone, iscas de pimentão, orégano e azeitonas pretas.')

Tamanho.create(nome: 'Pequena', preco: 25.00, diametro: 30, max_sabores: 2)
Tamanho.create(nome: 'Média', preco: 30.00, diametro: 35, max_sabores: 3)
Tamanho.create(nome: 'Grande', preco: 35.00, diametro: 45, max_sabores: 3)
Tamanho.create(nome: 'Gigante', preco: 40.00, diametro: 50, max_sabores: 4)

Borda.create(nome: 'Cheddar', preco_adicional: 4.50)
Borda.create(nome: 'Catupiry', preco_adicional: 2.50)

Pedido.create(
  email: 'cliente@exemplo.com',
  endereco: 'R: João Colin, nº 1234 - Centro',
  tamanho: Tamanho.first,
  sabores: Sabor.all.sample(2),
  borda: Borda.first
)
