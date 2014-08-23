class User < ActiveRecord::Base

  has_many :posts

  validates :first_name, :last_name, :email,
            :presence => true,
            :length => {:minimum => 2}

  validates :email, :uniqueness => true

  validates_format_of :email,
            :with => /\A([\w-]|\.)+@([\w-]|\.)+\.[a-z]{2,3}\z/i
end
