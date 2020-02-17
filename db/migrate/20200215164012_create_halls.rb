class CreateHalls < ActiveRecord::Migration[5.0]
  def change
    create_table :halls do |t|
      t.integer     :user
      t.timestamps
    end
  end
end
