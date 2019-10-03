class QuestionTagsController < ApplicationRecord

  def create
    byebug
    @question_tag = QuestionTag.create(question_id: )
  end

end
