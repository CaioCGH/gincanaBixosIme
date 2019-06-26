class CreateNewcomerSendsTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :newcomer_sends_tasks do |t|
      t.references :task, foreign_key: true
      t.references :newcomer, foreign_key: true
      t.integer    :index
      t.boolean    :is_valid
      t.string     :feedback
      t.numeric    :score

      t.timestamps
    end
    add_index :newcomer_sends_tasks, [:task_id, :newcomer_id], unique: false
  end
end
