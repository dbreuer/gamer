class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.string :correct_answer
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
    end
  end
end
