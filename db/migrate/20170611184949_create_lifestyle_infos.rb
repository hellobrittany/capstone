class CreateLifestyleInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :lifestyle_infos do |t|
      t.integer :application_id
      t.boolean :allergies
      t.boolean :reason_companion
      t.boolean :reason_kids
      t.boolean :reason_gift
      t.boolean :reason_other_pet
      t.boolean :reason_watchdog
      t.boolean :home_during_day
      t.string :when_outside
      t.string :when_inside
      t.integer :hours_dog_left_alone
      t.string :where_dog_sleep
      t.integer :outside_areas
      t.integer :preferred_level_of_exercise
      t.string :type_of_dog_food

      t.timestamps
    end
  end
end
