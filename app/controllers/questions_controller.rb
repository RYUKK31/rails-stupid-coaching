class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
   if @question == "I am going to work"
    @answer = @answers[0]
    elsif @question.last == "?"
     @answer = @answers[2]
    else
    @answer = @answers[1]
   end
  end
end


# Si le message est I am going to work, le coach répondra Great!.
# Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
# Sinon, le coach répondra I don't care, get dressed and go to work!.
