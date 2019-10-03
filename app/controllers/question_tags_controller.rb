class QuestionTagsController < ApplicationController

  def delete
    QuestionTag.find(params[:id]).destroy
    render 'questions/edit'
  end

end
