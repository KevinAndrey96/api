class CreateAutomovils < ActiveRecord::Migration[5.1]
  def change
    create_table :automovils do |t|
      t.string :marca
      t.string :color
      t.integer :modelo

      t.timestamps
    end
  end
end
