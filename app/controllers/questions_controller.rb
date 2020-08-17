class QuestionsController < ApplicationController

  def ask
  end

  def answer
    answer = params[:answer]
    @answer = coach_answer_enhanced(answer)
  end

  def coach_answer(your_message)
    if your_message.include? '?'
      'Silly question, get dressed and go to work!'
    elsif your_message.include? 'work'
      ''
    elsif your_message.include? '!'
      "I don't care, get dressed and go to work!"
    else
      ''
    end
  end

  def coach_answer_enhanced(your_message)
    return '' if your_message.include? 'WORK'

    if your_message.upcase == your_message
      "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end
end
