class CreateEnvios < ActiveRecord::Migration[5.2]
  def change
    create_table :envios do |t|
      t.references :bixe, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
    add_index :envios, [:bixe_id, :task_id], unique: true
  end
end
