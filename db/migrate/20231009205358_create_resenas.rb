class CreateResenas < ActiveRecord::Migration[7.0]
  def change
    create_table :resenas do |t|
      t.string :nombre
      t.text :reseña
      t.float :calificacion
      t.date :fecha

      t.timestamps
    end
  end
end
