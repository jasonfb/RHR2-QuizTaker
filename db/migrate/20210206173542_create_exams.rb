class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams, id: :uuid do |t|
      t.integer :session_id  # IMPORTANT: this is NOT the alpha numeric session_id stored in the browser; this is a foreign key to the sessions table
      t.uuid :quiz_id
      t.string :state
      t.datetime :completed_at
      t.integer :final_score

      t.timestamps
    end
  end
end
