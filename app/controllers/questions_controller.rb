class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find( params[:id] )
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new( question_params ) #made up method name question_params
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def edit
    @question = Question.find( params[:id] )
  end

  def update
    @question = Question.find( params[:id] )
    if @question.update( question_params )
      redirect_to @question
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find( params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private #encapsulation (private, public, protected--diff ways of specifying how available this particular code is for the rest of the code
  #private means these things can only be accessed by this file, it's not about protecting code from humans, but from other bits of code

  def question_params
    params.require(:question).permit(:title, :body)
      #require returns question array
      #of everything being posted, work with the questions part, and allow these two things to be submitted
  end

end
