class AddClomunToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :halls, :likes_count, :integer
  end
end
