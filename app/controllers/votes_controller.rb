class VotesController < ApplicationController

  def create
    @vote = Vote.new(answer_id: params[:vote][:answer_id], user_id: current_user.id)
    if @vote.save
      @vote.answer.vote_count += 1
    else
      flash[:message] = "You already voted for this answer!"
    end
    redirect_to question_path(@vote.answer.question.id)
  end

end
