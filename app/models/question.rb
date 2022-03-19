class Question < ApplicationRecord
  belongs_to :category
  def self.answers
    ['Not at all','Several days','More than half the days','Nearly every day']
  end
end
