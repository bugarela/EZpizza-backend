class Borda < ApplicationRecord
  def to_h
    {
      id: id,
      nome: nome,
      preco_adicional: preco_adicional
    }
  end
end
