class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions , id: :uuid do |t|
      t.uuid :quiz_id
      t.string :label

      t.timestamps
    end
  end
end
