class CreateCancions < ActiveRecord::Migration[5.1]
  def change
    create_table :cancions do |t|
      t.string :nombre
      t.string :artista
      t.string :genero

      t.timestamps
    end
  end
end
