class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.belongs_to :question
    end
  end
end