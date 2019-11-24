class Sabor < ApplicationRecord
  def to_h
    {
      id: id,
      nome: nome,
      preco_adicional: preco_adicional,
      ingredientes: ingredientes
    }
  end
end
