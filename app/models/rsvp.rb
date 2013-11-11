class Rsvp < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :user_id, :rsvp
  belongs_to :user
end
