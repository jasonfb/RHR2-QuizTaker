class CreateExamResponse < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_responses do |t|
      t.uuid :exam_id
      t.uuid :chosen_answer_id
      t.uuid :question_id

      t.timestamps
    end
  end
end
