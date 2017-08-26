class CreateComputadors < ActiveRecord::Migration[5.1]
  def change
    create_table :computadors do |t|
      t.string :marca
      t.string :procesador
      t.integer :ram

      t.timestamps
    end
  end
end
