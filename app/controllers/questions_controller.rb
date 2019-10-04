class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :delete_status]
  layout 'root_index_page', only: :index

  def index
    @questions = Question.all[0..9]
  end

  def search
    if params[:query] && !params[:query].empty?
      @questions = Question.select { |q| q.deleted == false && q.title.downcase.include?(params[:query].downcase) || q.content.downcase.include?(params[:query].downcase) }[0..9]
    elsif params[:tag_query]
      tag = Tag.find(params[:tag_query])
      @questions = Question.all.select { |q| q.deleted == false && q.tags.include?(tag) }[0..9]
    end

    if !@questions || @questions.empty?
      flash[:message] = "Sorry, there were no matching results!"
      redirect_to questions_path
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(content: params[:question][:content], title: params[:question][:title], user_id: current_user.id)
    @tag_ids = params[:question][:tag_ids].select{ |id| !id.empty? }
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
    @question_tag = QuestionTag.new
  end

  def update
    @tag_ids = params[:question][:tag_ids].select{ |id| !id.empty? }
    if @question.update(title: params[:question][:title], content: params[:question][:content])
      q_arr = QuestionTag.where(question_id: @question.id).select{ |qt| @tag_ids.include?(qt.tag_id.to_s) == false }
      q_arr.each { |qt| qt.destroy }
      @tag_ids.each do |id|
        QuestionTag.create(question_id: @question.id, tag_id: id)
      end
      redirect_to @question
    else
      render :edit
    end
  end

  def delete_status
    @question.update(:deleted => true, :delete_message => "This question is no longer available")
    redirect_to user_path(current_user.id)
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
