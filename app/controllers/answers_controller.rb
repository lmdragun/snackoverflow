class AnswersController < ApplicationController
  def index

  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end
end
