class AddProfileToParts < ActiveRecord::Migration
  def change
    add_column :parts, :profile_id, :integer
    add_column :parts, :profile_type, :string
  end
end
