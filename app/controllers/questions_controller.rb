class QuestionsController < ApplicationController
  def ask

  end

  # def answer
  #   @question = params["ask"]
  #   @response = ""
  #   if @question == "I am going to work"
  #     @response = "Great!"
  #   elsif @question.include?("?")
  #     @response = "Silly question, get dressed and go to work!."
  #   else
  #     @response = "I don't care, get dressed and go to work!"
  #   end
  # end


  def answer
    @question = params["ask"] || ""

    if @question == "I'm going to work"
      @response = "Great!"
    elsif @question.include?("?")
      @response = "Silly question, get dressed and go to work!"  # Removed extra period
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
