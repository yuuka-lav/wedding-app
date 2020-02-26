class RemoveLikesCountFromHall < ActiveRecord::Migration[5.0]
  def change
    remove_column :halls, :likes_count, :integer
  end
end
