class ScreenAnswerController < ApplicationController
	def create
	  screen = Screen.find_by_id(params[:screen_id])
	  params["screen_answer"].each do |question_id, answer_id|
        screen.screen_answers.create!(question_id: question_id, answer: answer_id)
	  end
	  screen.result
	end
end
