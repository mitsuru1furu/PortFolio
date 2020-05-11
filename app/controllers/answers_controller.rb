class AnswersController < ApplicationController
  def edit
  end

  def create
  	@question = Question.find(params[:question_id])
  	@answer = @question.answers.new(answer_params)
  	@answer.user_id = current_user.id
  	@answer.save
  	redirect_back fallback_location: @question
  end

  def update
    @question = Answer.find(params[:question_id])
    @question.user_id = current_user.id
    @question.update(answer_params)
  end

  private
  def answer_params
  	params.require(:answer).permit(:answer_comment)
  end
end
