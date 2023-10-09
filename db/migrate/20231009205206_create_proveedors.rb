class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :tipo_de_servicio
      t.string :horario
      t.string :zona
      t.decimal :costo
      t.string :telefono
      t.float :calificacion
      t.integer :recomendaciones

      t.timestamps
    end
  end
end
