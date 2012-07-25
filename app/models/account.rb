class Account < ActiveRecord::Base
  belongs_to :vertical
  belongs_to :client

 # Validations
  validates :name, :vertical, :client, :presence => true
end
