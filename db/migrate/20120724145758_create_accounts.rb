class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :vertical
      t.references :client

      t.timestamps
    end
    add_index :accounts, :vertical_id
    add_index :accounts, :client_id
  end
end
