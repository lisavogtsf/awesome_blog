class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable

  validates :title, :body, 
  			:presence => true
end
