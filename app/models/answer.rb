class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes

  validates :content, presence: true

  def vote_count=(count)
    self.votes.count + count
  end

  def vote_count
    self.votes.count
  end

end
