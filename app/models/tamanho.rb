class Tamanho < ApplicationRecord
  def to_h
    {
      id: id,
      nome: nome,
      preco: preco,
      diametro: diametro,
      maxSabores: max_sabores,
    }
  end
end
