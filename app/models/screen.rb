class Screen < ApplicationRecord
  belongs_to :check_in
  belongs_to :category
  has_many :screen_answers

  def result
    return false if screen_answers.empty?
    answers = screen_answers.pluck(:answer)
    answers.map{|a| a == 2 || a == 3}.any?(true) ? "additional screening should be completed" : "additional screening is not needed"
  end  
end
