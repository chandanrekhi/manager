class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :description
      t.string :country

      t.timestamps
    end
  end
end
