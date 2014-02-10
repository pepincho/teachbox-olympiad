class CreateQuickQuestions < ActiveRecord::Migration
  def change
    create_table :quick_questions do |t|
      t.text :question
      t.integer :user_id

      t.timestamps
    end
  end
end
