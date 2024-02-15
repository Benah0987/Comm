class QuestionsController < ApplicationController
  # GET /questions
  def index
    category = params[:category]
    @questions = category.present? ? Question.where(category: category) : Question.all
    render json: @questions
  end
end
