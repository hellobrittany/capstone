class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :spouse_name
      t.string :spouse_occupation
      t.boolean :kids
      t.string :dwelling_type
      t.boolean :dwelling_owned
      t.boolean :landlord_permission
      t.string :landlord_name
      t.string :landlord_phone

      t.timestamps
    end
  end
end
