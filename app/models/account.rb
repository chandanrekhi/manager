class Account < ActiveRecord::Base
  belongs_to :vertical
  belongs_to :client
end
