class QuestionsController < ApplicationController
  # def home
  # end
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = if params[:question] == 'I am going to work'
                'Great!'
              elsif params[:question].last == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
