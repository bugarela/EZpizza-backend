class Pedido < ApplicationRecord
  has_and_belongs_to_many :sabores
  belongs_to :tamanho
  belongs_to :borda

  validate :sabores_count

  def sabores_count
    return if sabores.size <= tamanho.max_sabores

    self.errors.add(:sabores, "- a pizza #{tamanho.nome} só pode ter #{tamanho.max_sabores} sabores. Você escolheu #{sabores.size}.")
  end

  def total
    tamanho.preco + sabores.sum(&:preco_adicional) + borda.preco_adicional
  end
end
