class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :comments, as: :commentable
  accepts_nested_attributes_for :tags

  validates :content, presence: true
  #
  # def self.search(params)
  #   # byebug
  #   if params[:query]
  #     Question.select { |q| q.title.downcase.include?(params[:query].downcase) || q.content.downcase.include?(params[:query].downcase) }
  #   elsif params[:tag_query]
  #     tag = Tag.find(params[:tag_query])
  #     Question.all.select { |q| q.tags.include?(tag) }
  #   else
  #     Question.all
  #   end
  # end

end
