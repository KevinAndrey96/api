class CreateMascota < ActiveRecord::Migration[5.1]
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :raza
      t.string :color

      t.timestamps
    end
  end
end
