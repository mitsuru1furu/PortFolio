class TopsController < ApplicationController
  def top

  end
  
  def index
  	@products = Product.all
  	@questions = Question.all
  end
end
