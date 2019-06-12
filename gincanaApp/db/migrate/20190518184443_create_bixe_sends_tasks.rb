class CreateBixeSendsTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :bixe_sends_tasks do |t|
      t.references :task, foreign_key: true
      t.references :bixe, foreign_key: true
      t.integer    :index
      t.boolean    :is_valid
      t.string     :feedback
      t.numeric    :score

      t.timestamps
    end
    add_index :bixe_sends_tasks, [:task_id, :bixe_id], unique: false
  end
end
