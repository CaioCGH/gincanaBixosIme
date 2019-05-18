class CreateRelSerProfs < ActiveRecord::Migration[5.2]
  def change
    create_table :rel_ser_profs do |t|
      t.references :service, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
    add_index :rel_ser_profs, [:service_id, :profile_id], unique: true
  end
end
