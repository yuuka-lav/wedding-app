class AddClomunToHalls < ActiveRecord::Migration[5.0]
  def change
    add_column :halls, :name, :string
    add_column :halls, :place, :string
    add_column :halls, :image, :string
  end
end
