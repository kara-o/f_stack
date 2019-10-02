class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :delete_status]

  def create
    Comment.create(content: params[:comment][:content], user_id: current_user.id, commentable_id: params[:comment][:commentable_id], commentable_type: params[:comment][:commentable_type])
    redirect_to question_path(Answer.find(params[:comment][:commentable_id]).question.id)
  end

  def show
    if @comment.commentable_type == "Answer"
      redirect_to question_path(Answer.find(@comment.commentable_id).question_id)
    else
      redirect_to question_path(@comment.commentable_type)
    end
  end

  def delete_status
    @comment.update(:content => "This post no longer exists", :deleted => true)
    redirect_to user_path(current_user.id)
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
