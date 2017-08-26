class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :tipo
      t.string :direccion

      t.timestamps
    end
  end
end
