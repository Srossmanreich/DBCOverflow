class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :content, :username
      t.integer :comment_count
      t.integer :votes_count, default: 0
      t.timestamps

    end
  end
end
