class AddColumnQuestions < ActiveRecord::Migration
  def change
  	add_column :quick_questions, :topic, :string
  end
end
