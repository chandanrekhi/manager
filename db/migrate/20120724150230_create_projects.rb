class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :technology
      t.integer :teamsize
      t.integer :won
      t.date :startdate
      t.date :enddate
      t.references :account

      t.timestamps
    end
    add_index :projects, :account_id
  end
end
