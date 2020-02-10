class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:message].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:message] == 'I am going to work'
      @answer = 'Great!'
    else @answer = "I don't care, get dressed and go to work!"
    end
    @ask = params[:message]
  end
end
