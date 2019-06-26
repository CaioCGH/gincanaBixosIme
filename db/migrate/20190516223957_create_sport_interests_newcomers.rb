class CreateSportInterestsNewcomers < ActiveRecord::Migration[5.2]
  def change
    create_table :sport_interests_newcomers do |t|
      t.references :newcomer, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
    add_index :sport_interests_newcomers, [:newcomer_id, :sport_id], unique: true
  end
end
