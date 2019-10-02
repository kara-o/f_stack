class VotesController < ApplicationController

  def create
    @vote = Vote.new(answer_id: params[:vote][:answer_id], user_id: current_user.id)
    if !@vote.save
      flash[:message] = "You already voted for this answer!"
    end
    redirect_to question_path(Answer.find(params[:vote][:answer_id]).question.id)
  end

end
