class QuestionsController < ApplicationController
  # GET /questions?question_type=audio
  def index
    question_type = params[:question_type]
    @questions = question_type.present? ? Question.where(question_type: question_type) : Question.all
    render json: @questions
  end
end
