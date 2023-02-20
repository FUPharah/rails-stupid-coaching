class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]

    if @question.include?("?")
      @answer = 'silly question, get dressed and go to work'
    elsif @question == "I'm going to work"
      @answer = 'Great!'
    else
      @answer = "I don't care get dressed and goto work"
    end
  end
end
