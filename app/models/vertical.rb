class Vertical < ActiveRecord::Base
  
  has_many :employee_verticals
  has_many :employees, :through => :employee_verticals	
  belongs_to :company

   # validations
  
  validates :name, :company, :employees, :presence => true
end
