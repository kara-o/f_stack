class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  validates :username, presence: true
  validates :username, uniqueness: { if: -> { username.present? }, message: '%{value} is already taken, sorry!' }
  validates :email, presence: true
  validates :email, format: { if: -> { email.present? }, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'does not appear to be a valid format' }

end
