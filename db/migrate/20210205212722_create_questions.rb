class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.uuid :quiz_id
      t.string :label
      t.string :correct_answer

      t.timestamps
    end
  end
end
