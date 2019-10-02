class AnswersController < ApplicationController

  def create
    @answer = Answer.create(content: params[:answer][:content], user_id: current_user.id, question_id: params[:answer][:question_id])
    redirect_to question_path(@answer.question_id)
  end

  def show
    @answer = Answer.find(params[:id])
    redirect_to question_path(@answer.question.id)
  end

  def delete_status

    redirect_to user_path(current_user.id)
  end

end
