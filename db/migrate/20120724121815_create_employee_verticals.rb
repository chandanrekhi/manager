class CreateEmployeeVerticals < ActiveRecord::Migration
  def change
    create_table :employee_verticals do |t|
      t.references :employee
      t.references :vertical

      t.timestamps
    end
    add_index :employee_verticals, :employee_id
    add_index :employee_verticals, :vertical_id
  end
end
