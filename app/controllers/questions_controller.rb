# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
    # GET /categories/:category/questions
    def index
      category = params[:category]
      @questions = Question.where(category: category)
      render json: @questions
    end
  end
  