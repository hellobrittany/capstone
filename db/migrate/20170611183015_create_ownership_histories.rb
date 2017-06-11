class CreateOwnershipHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :ownership_histories do |t|
      t.integer :application_id
      t.integer :number_of_current_pets
      t.boolean :allowed_breeding

      t.timestamps
    end
  end
end
