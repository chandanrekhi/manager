class Post < ActiveRecord::Base
    
    
   # Associations
	belongs_to :employee

   # Validations
	validates :message, :presence => true
	validates :message, :length => { :maximum => 180, :too_long => "%{count} characters is the maximum allowed" }
end
