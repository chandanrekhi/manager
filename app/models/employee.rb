class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
 # devise :database_authenticatable, :registerable,
       #  :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :vertical, :remember_me, :name, :role, :manager 

# Associations	
	belongs_to :vertical
	has_many :employee_verticals

# Validations
    validates :name, :email, :password, :password_confirmation, :presence => true
end
