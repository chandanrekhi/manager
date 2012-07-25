class Company < ActiveRecord::Base

# Associations
	has_many :verticals
	
# Validations
    validates :name, :presence => true
end
