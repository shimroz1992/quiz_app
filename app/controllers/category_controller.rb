class CategoryController < ApplicationController
	def show
		@category = Category.find_by_id(params[:id])
		@questions = @category.questions
		# @screener = Screener.new
		@screen = Screen.create(category_id: @category.id, check_in_id: params[:check_in_id])
	end
end
