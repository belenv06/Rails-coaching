class QuestionsController < ApplicationController
  def index
  end

  def ask
  end

  def answer
    @question = params[:answer_letters] 

    if params[:answer_letters] == "I am going to work"
      @answer = "Great!"
    elsif params[:answer_letters].end_with?("?")
      @answer = "Silly question, get dressed and go to work!."
    else 
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end