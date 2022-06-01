class QuestionsController < ApplicationController
  def index
   
  end

  def ask
    if params[:alert]
      @alert = params[:alert]
    end
  end

  def answer
    @question = params[:answer_letter]

    if @question === ""
      redirect_to ask_path(alert:"debe escribir en su casilla")
    end

    if @question == "I am going to work"
      @answer = "Great!"
    elsif params[:answer_letter].end_with?("?")
      @answer = "Silly question, get dressed and go to work!."
    else 
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end