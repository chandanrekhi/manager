class Project < ActiveRecord::Base
  belongs_to :account

  # validations
  
  validates :name, :description, :technology, :teamsize, :won, :startdate, :enddate, :account, :presence => true

end
