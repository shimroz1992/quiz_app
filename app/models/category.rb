class Category < ApplicationRecord
  has_many :questions
  def show
  	@check_ins = Category.new
  end
end
