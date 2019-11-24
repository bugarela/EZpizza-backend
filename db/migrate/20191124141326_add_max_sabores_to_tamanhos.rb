class AddMaxSaboresToTamanhos < ActiveRecord::Migration[5.1]
  def change
    add_column :tamanhos, :max_sabores, :int
  end
end
