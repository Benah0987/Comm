class QuestionsController < ApplicationController
  def index
    questions = Question.where(question_type: params[:question_type])
    render json: questions, status: :ok
  end
end
