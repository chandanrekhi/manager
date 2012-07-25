class Post < ActiveRecord::Base
	belongs_to :employee

	validates :message, :presence => true
	validates :message, :length => { :maximum => 180,    :too_long => "%{count} characters is the maximum allowed" }
end
