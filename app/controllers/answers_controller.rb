class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :delete_status, :edit, :update]

  def create
    @answer = Answer.create(content: params[:answer][:content], user_id: current_user.id, question_id: params[:answer][:question_id])
    redirect_to question_path(@answer.question_id)
  end

  def show
    redirect_to question_path(@answer.question.id)
  end

  def delete_status
    @answer.update(:deleted => true, :delete_message => "This answer is no longer available")
    redirect_to user_path(current_user.id)
  end

  def edit
  end

  def update
    if @answer.update(answer_params)
      redirect_to question_path(@answer.question.id)
    else
      render :edit
    end
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:content, :user_id, :question_id)
  end

end
