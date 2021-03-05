class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams, id: :uuid do |t|
      t.string :session_id  # IMPORTANT: this is the alpha numeric session_id stored in the browser
      t.uuid :quiz_id
      t.datetime :started_at
      t.datetime :completed_at
      t.integer :final_score

      t.timestamps
    end
  end
end
