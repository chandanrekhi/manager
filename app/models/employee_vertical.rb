class EmployeeVertical < ActiveRecord::Base
  belongs_to :employee
  belongs_to :vertical
end
