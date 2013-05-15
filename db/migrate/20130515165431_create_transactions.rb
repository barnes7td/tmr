class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :detail
      t.references :part
      t.integer :quantity
      t.integer :ship_loose

      t.timestamps
    end
    add_index :transactions, :detail_id
    add_index :transactions, :part_id
  end
end
