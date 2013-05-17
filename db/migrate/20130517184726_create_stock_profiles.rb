class CreateStockProfiles < ActiveRecord::Migration
  def change
    create_table :stock_profiles do |t|
      t.string :dimensions
      t.string :material
      t.float :length

      t.timestamps
    end
  end
end
