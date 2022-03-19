class ScreenAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :screen

  enum answers: [:not_at_all, :several_days, :more_than_half_the_days, :nearly_every_day]

end
