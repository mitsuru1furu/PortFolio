class QuestionsController < ApplicationController
  def show
  	@question = Question.find(params[:id])
  end

  def new
  	
  end

  def edit
  end
  def create
  	@question =Question.new(question_params)
  	@question.user_id = current_user.id
  	@question.save
  	redirect_to "/"
  end

  def destroy
  end

  private
  def question_params
  	params.require(:question).permit(:title,:question_comment,:user_id)
  end
end
