class CreateOwnedPets < ActiveRecord::Migration[5.1]
  def change
    create_table :owned_pets do |t|
      t.integer :ownership_history_id
      t.string :species
      t.string :breed
      t.boolean :current
      t.integer :length_of_ownership
      t.string :explanation

      t.timestamps
    end
  end
end
