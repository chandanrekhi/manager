class Client < ActiveRecord::Base

# Validations
  validates :name, :description, :country, :presence => true
end
