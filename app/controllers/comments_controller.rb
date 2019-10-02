class CommentsController < ApplicationController

  def create
    Comment.create(content: params[:comment][:content], user_id: current_user.id, commentable_id: params[:comment][:commentable_id], commentable_type: params[:comment][:commentable_type])
    redirect_to question_path(Answer.find(params[:comment][:commentable_id]).question.id)
  end

  def show
    @comment = Comment.find(params[:id])
    if @comment.commentable_type == "Answer"
      redirect_to question_path(Answer.find(@comment.commentable_id).question_id)
    else
      redirect_to question_path(@comment.commentable_type)
    end
  end

  def delete_status

    redirect_to user_path(current_user.id)
  end

end
