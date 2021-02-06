class CreateExamQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_questions do |t|
      t.uuid :exam_id
      t.integer :question_id

      t.timestamps
    end
  end
end
