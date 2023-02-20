class QuestionsController < ApplicationController
  def ask
    # answer(@your_message)
  end

  def answer
    stop_message = 'I am going to work right now!'
    @your_message = params[:question]
    if @your_message == stop_message
      @coach_answer = 'Great!'
    elsif @your_message == 'Hello'
      @coach_answer = 'Hello I am your coach'
    elsif @your_message.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
