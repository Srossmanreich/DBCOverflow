class Comment < ActiveRecord::Base

  belongs_to :interactive, polymorphic: true
  belongs_to :user

  validates :title, :content, presence: true

end