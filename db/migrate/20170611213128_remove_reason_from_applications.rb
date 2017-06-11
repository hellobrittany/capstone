class RemoveReasonFromApplications < ActiveRecord::Migration[5.1]
  def change
    remove_column :applications, :reason, :string
  end
end
