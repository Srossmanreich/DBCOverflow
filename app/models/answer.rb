class Answer < ActiveRecord::Base

  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :question
  has_many :votes, as: :votable

  validates :title, :content, presence: true

end