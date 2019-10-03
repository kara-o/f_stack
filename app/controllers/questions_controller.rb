class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :delete_status]
  layout 'root_index_page', only: :index

  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
    @question_tag = QuestionTag.new
  end

  def create
    @question = Question.new(title: params[:question][:title], content: params[:question][:content], user_id: current_user.id)
    byebug
    @tag_ids = params[:question][:question_tag][:tag_id].select{ |id| !id.empty? }
    if @question.save
      @tag_ids.each do |id|
        QuestionTag.create(question_id: @question.id, tag_id: id)
      end
    end
    redirect_to @question
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
    @question.update(:title => "This question no longer exists", :content => "", :deleted => true)
    redirect_to user_path(current_user.id)
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content, :user_id, question_tag_attributes: [:question_id, :tag_ids => []])
  end

end
