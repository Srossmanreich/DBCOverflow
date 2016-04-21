class Question < ActiveRecord::Base

  has_many :votes
  has_many :comments, as: :interactive
  belongs_to :user

  def points
    votes.sum(:value)
  end

  validates :title, :content, presence: true

end
