class CreateVerticals < ActiveRecord::Migration
  def change
    create_table :verticals do |t|
      t.string :name
      t.references :company

      t.timestamps
    end
    add_index :verticals, :company_id
  end
end
