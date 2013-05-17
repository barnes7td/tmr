class CreateRivetProfiles < ActiveRecord::Migration
  def change
    create_table :rivet_profiles do |t|
      t.float :diameter

      t.timestamps
    end
  end
end
