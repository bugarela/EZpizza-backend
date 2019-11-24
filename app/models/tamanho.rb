class Tamanho < ApplicationRecord
  def to_h
    {
      id: id,
      nome: nome,
      preco: preco,
      diametro: diametro,
      max_sabores: max_sabores,
    }
  end
end
