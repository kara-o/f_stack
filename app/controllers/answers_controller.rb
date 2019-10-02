class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :delete_status]

  def create
    @answer = Answer.create(content: params[:answer][:content], user_id: current_user.id, question_id: params[:answer][:question_id])
    redirect_to question_path(@answer.question_id)
  end

  def show
    redirect_to question_path(@answer.question.id)
  end

  def delete_status
    @answer.update(:content => "This post no longer exists", :deleted => true)
    redirect_to user_path(current_user.id)
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

end
