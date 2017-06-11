class AddWhoHasYardAccessToDwellingInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :dwelling_infos, :who_has_yard_access, :integer
  end
end
