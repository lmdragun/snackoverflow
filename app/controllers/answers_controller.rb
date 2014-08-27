class AnswersController < ApplicationController
  def index

  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    if @question.answers.create( answer_params )
      redirect_to @question  
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end
