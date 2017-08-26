class CreateViviendas < ActiveRecord::Migration[5.1]
  def change
    create_table :viviendas do |t|
      t.string :barrio
      t.string :tipo
      t.integer :habitantes

      t.timestamps
    end
  end
end
