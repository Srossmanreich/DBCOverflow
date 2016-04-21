class Question < ActiveRecord::Base

  has_many :comments, as: :interactive
  belongs_to :user

  validates :title, :content, presence: true

end
