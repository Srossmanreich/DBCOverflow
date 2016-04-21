class CreateQuestionsTable < ActiveRecord::Migration
   def change
    create_table :questions do |t|
      t.string :title, :content
      t.integer :votes_count, default: 0
      t.timestamps
    end
  end
end