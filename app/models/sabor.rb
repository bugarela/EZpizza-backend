class Sabor < ApplicationRecord
  def to_h
    {
      id: id,
      nome: nome,
      precoAdicional: preco_adicional,
      ingredientes: ingredientes
    }
  end
end
