class RemoveUserFromHall < ActiveRecord::Migration[5.0]
  def change
    remove_column :halls, :user, :integer
  end
end
