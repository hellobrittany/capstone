class CreateOwnershipProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :ownership_profiles do |t|
      t.integer :application_id
      t.boolean :regular_vet
      t.string :who_grooms
      t.boolean :wears_collar
      t.string :experience_level
      t.string :discipline_style
      t.boolean :training_obedience_class
      t.boolean :training_hit
      t.boolean :training_verbal
      t.boolean :training_clicker
      t.string :training_other
      t.string :dog_walk_style
      t.boolean :ready
      t.boolean :invested
      t.string :move_locally_plan
      t.string :move_far_plan
      t.string :move_internationally_plan
      t.boolean :gu_excessive_barking
      t.boolean :gu_biting
      t.boolean :gu_digging
      t.boolean :gu_moving
      t.boolean :gu_divorce
      t.boolean :gu_poor_watchdog
      t.boolean :gu_distructive
      t.boolean :gu_financial
      t.boolean :gu_accidents
      t.boolean :gu_growls
      t.boolean :gu_vet_bills
      t.boolean :gu_shedding
      t.boolean :gu_allergies
      t.boolean :gu_new_partner
      t.boolean :gu_aggressive
      t.boolean :gu_other

      t.timestamps
    end
  end
end
