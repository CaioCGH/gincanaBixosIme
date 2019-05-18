class CreateRelBixeSports < ActiveRecord::Migration[5.2]
  def change
    create_table :rel_bixe_sports do |t|
      t.references :bixe, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
    add_index :rel_bixe_sports, [:bixe_id, :sport_id], unique: true
  end
end
