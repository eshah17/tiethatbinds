class Wish < ActiveRecord::Base
  attr_accessible :user_id, :wish
  belongs_to :user
end
