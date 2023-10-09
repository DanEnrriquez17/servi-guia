class AddProveedorToResenas < ActiveRecord::Migration[7.0]
  def change
    add_reference :resenas, :proveedor, null: false, foreign_key: true
  end
end
