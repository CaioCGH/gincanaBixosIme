class CreateProfileHasServices < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_has_services do |t|
      t.references :profile, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
    add_index :profile_has_services, [:profile_id, :service_id], unique: true
  end
end
