class CreateFastenerProfiles < ActiveRecord::Migration
  def change
    create_table :fastener_profiles do |t|
      t.float :diameter
      t.string :material
      t.float :length

      t.timestamps
    end
  end
end
