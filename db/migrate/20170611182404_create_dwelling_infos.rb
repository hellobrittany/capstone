class CreateDwellingInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :dwelling_infos do |t|
      t.integer :application_id
      t.boolean :has_fencing
      t.integer :fence_highest_height
      t.integer :fence_lowest_height
      t.boolean :has_gates
      t.string :who_has_yard_access
      t.boolean :street_access

      t.timestamps
    end
  end
end
