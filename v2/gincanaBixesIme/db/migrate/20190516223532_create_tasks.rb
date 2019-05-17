class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :score_type
      t.boolean :have_score
      t.boolean :group
      t.boolean :send
      t.integer :max_send
      t.boolean :have_feedback

      t.timestamps
    end
  end
end
