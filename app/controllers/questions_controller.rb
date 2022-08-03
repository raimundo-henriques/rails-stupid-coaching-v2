class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end
end
