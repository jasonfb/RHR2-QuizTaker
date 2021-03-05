class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers, id: :uuid  do |t|
      t.uuid :question_id
      t.string :label
      t.boolean :correct

      t.timestamps
    end
  end
end
