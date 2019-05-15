class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :scoring_type
      t.string :task_type
      t.boolean :sendable

      t.timestamps
    end
  end
end
