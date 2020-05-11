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
    @answer = Answer.find(params[:question_id])
    @answer.user_id = current_user.id
    @answer.update(answer_params)
  end
  def destroy
    @answer = Answer.find(params[:question_id])
    @answer.user_id = current_user.id
    @answer.destroy
    redirect_back fallback_location: @question
  end

  private
  def answer_params
  	params.require(:answer).permit(:answer_comment)
  end
end
