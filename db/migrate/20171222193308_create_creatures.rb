class CreateCreatures < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :img
      t.integer :health
      t.integer :attack
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
