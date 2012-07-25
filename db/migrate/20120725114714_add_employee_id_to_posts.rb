class AddEmployeeIdToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :employee_id, :integer, {:foreign_key => true}
  end
end
