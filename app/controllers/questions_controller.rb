class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question].nil? ? 'Hello' : params[:question]
    @answer = if @question.downcase == 'i am going to work'
                'Great!'
              elsif @question[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
