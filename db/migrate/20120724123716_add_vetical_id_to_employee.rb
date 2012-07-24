class AddVeticalIdToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :vertical_id, :integer
  end
end
