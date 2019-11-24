class Borda < ApplicationRecord
  def to_h
    {
      id: id,
      nome: nome,
      precoAdicional: preco_adicional
    }
  end
end
