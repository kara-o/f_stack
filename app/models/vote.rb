class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :answer

  validates_uniqueness_of :user_id, scope: :answer_id

end
