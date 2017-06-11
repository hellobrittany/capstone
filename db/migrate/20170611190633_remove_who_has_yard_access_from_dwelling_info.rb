class RemoveWhoHasYardAccessFromDwellingInfo < ActiveRecord::Migration[5.1]
  def change
    remove_column :dwelling_infos, :who_has_yard_access, :string
  end
end
