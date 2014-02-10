class CreateQuickAnswers < ActiveRecord::Migration
  def change
    create_table :quick_answers do |t|
      t.text :answer
      t.integer :user_id
      t.integer :quick_question_id

      t.timestamps
    end
  end
end
