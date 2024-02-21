class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params["question"]
    if @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.strip.chars.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.blank?
      @answer = "I can't hear you!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
