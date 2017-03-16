class Post < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :user

  validates_presence_of :title, :body
end
