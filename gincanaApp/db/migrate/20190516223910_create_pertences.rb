class CreatePertences < ActiveRecord::Migration[5.2]
  def change
    create_table :pertences do |t|
      t.references :team, foreign_key: true
      t.references :bixe, foreign_key: true

      t.timestamps
    end
    add_index :pertences, [:team_id, :bixe_id], unique: true
  end
end
