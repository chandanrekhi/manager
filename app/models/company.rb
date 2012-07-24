class Company < ActiveRecord::Base

#Associations
	has_many :verticals
	has_many :employees, :through => :employee_verticals
end
