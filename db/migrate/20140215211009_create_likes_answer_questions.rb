class CreateLikesAnswerQuestions < ActiveRecord::Migration
  def change
    create_table :likes_answer_questions do |t|

      t.integer :quick_answer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
