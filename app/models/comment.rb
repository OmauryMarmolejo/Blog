class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
#  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable
  validates_presence_of :content
end
