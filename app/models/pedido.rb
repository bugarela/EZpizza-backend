class Pedido < ApplicationRecord
  has_and_belongs_to_many :sabores
  belongs_to :tamanho
  belongs_to :borda
end
