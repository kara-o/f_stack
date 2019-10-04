class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :delete_status]

  def create
    @comment = Comment.create(content: params[:comment][:content], user_id: current_user.id, commentable_id: params[:comment][:commentable_id], commentable_type: params[:comment][:commentable_type])
    if @comment.commentable_type == "Answer"
      redirect_to question_path(Answer.find(@comment.commentable.id).question.id)
    else
      redirect_to question_path(@comment.commentable.id)
    end
  end

  def show
    if @comment.commentable_type == "Answer"
      redirect_to question_path(Answer.find(@comment.commentable_id).question_id)
    else
      redirect_to question_path(@comment.commentable_id)
    end
  end

  def delete_status
    @comment.update(:deleted => true, :delete_message => "This comment is no longer available")
    redirect_to user_path(current_user.id)
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
