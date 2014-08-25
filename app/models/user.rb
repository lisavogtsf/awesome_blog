class User < ActiveRecord::Base

  has_many :posts
  has_many :pages

  validates :first_name, :last_name, :email,
            :presence => true,
            :length => {:minimum => 2}


 validates :email, presence: true, uniqueness: {case_sensitive: false}

def self.authenticate email, password
	User.find_by_email(email).try(:authenticate,password)
end
  # validates_format_of :email,
  #           :with => /\A([\w-]|\.)+@([\w-]|\.)+\.[a-z]{2,3}\z/i
end
