class AddWhereDogStayToLifestyleInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :lifestyle_infos, :where_dog_stay, :string
  end
end
