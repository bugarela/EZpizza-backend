# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sabor.create(nome: 'Calabresa', preco_adicional: 0, ingredientes: 'Molho de tomate, calabresa fatiada, cebola, orégano e azeitonas pretas.')
Sabor.create(nome: '4 queijos', preco_adicional: 0, ingredientes: 'Molho de tomate, gorgonzola, catupiry, provolone, muzzarela especial, orégano e azeitonas pretas.')
Sabor.create(nome: 'Pepperoni', preco_adicional: 4.75, ingredientes: 'Molho de tomate, muzzarela especial, coberta com salame pepperoni, iscas de pimentão, orégano e azeitonas pretas.')
Sabor.create(nome: 'Lombo', preco_adicional: 2.00, ingredientes: 'Molho de tomate, lombo defumado, cebola, orégano e azeitona preta.')
Sabor.create(nome: 'Frango', preco_adicional: 0, ingredientes: 'Molho de tomate, peito de frango desfiado, coberta com catupiry, orégano e azeitonas pretas.')
Sabor.create(nome: 'Portuguesa', preco_adicional: 0, ingredientes: 'Molho de tomate, presunto gordo, cebola, ovos cozidos, coberta com muzzarela especial, orégano e azeitonas pretas.')

Tamanho.create(nome: 'Pequena', preco: 25.00, diametro: 30, max_sabores: 2)
Tamanho.create(nome: 'Média', preco: 30.00, diametro: 35, max_sabores: 3)
Tamanho.create(nome: 'Grande', preco: 35.00, diametro: 45, max_sabores: 3)
Tamanho.create(nome: 'Gigante', preco: 40.00, diametro: 50, max_sabores: 4)

Borda.create(nome: 'Nenhuma', preco_adicional: 0.00)
Borda.create(nome: 'Cheddar', preco_adicional: 4.50)
Borda.create(nome: 'Catupiry', preco_adicional: 2.50)

Pedido.create(
  email: 'cliente@exemplo.com',
  endereco: 'R: João Colin, nº 1234 - Centro',
  tamanho: Tamanho.first,
  sabores: Sabor.all.sample(2),
  borda: Borda.first,
  confirmado: false
)

Pedido.create(
  email: 'cliente2@exemplo.com',
  endereco: 'R: João Colin, nº 4567 - Centro',
  tamanho: Tamanho.first,
  sabores: [Sabor.first],
  borda: Borda.first,
  confirmado: false
)

Pedido.create(
  email: 'cliente3@exemplo.com',
  endereco: 'R: João Colin, nº 899 - Centro',
  tamanho: Tamanho.last,
  sabores: [Sabor.first],
  borda: Borda.last,
  confirmado: false
)
