class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me ,:first_name,:last_name,:profile_name
  # attr_accessible :title, :body
  
#relationship between wishes and users table  
  has_many :wishes
#relationship between rsvp and users table
has_one :rsvps
  
#validates firstname,lastname, email, profile_name
validates :first_name, presence: true  
validates :last_name, presence: true 
validates :email, presence: true 
validates :password, presence: true
validates :profile_name, presence: true,
                          uniqueness: true, 
                          format:{
                            with: /^[a-zA-Z0-9_-]+$/,
                            message: 'No space should be added'
                            }
                  
                        
                              

#creating full_name method
  def full_name
    first_name + " " + last_name
  end
end
