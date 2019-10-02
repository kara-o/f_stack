class QuestionsController < ApplicationController

  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
  end

  def create
  end

  def show
    @answers_sorted = @question.answers.sort_by(&:vote_count).reverse
    @comment = Comment.new
    @answer = Answer.new
    @vote = Vote.new
  end

  def edit
  end

  def update
  end

  def delete_status
    @question.update(:content => "This post no longer exists", :delete => true)
    redirect_to user_path(current_user.id)
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content, :user_id)
  end

end
