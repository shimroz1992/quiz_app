class CreateScreenAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :screen_answers do |t|
      t.references :question, null: false, foreign_key: true
      t.references :screen, null: false, foreign_key: true
      t.integer :answer

      t.timestamps
    end
  end
end
