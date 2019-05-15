class CreateUserHasProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_has_profiles do |t|
      t.references :user, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
    add_index :user_has_profiles, [:user_id, :profile_id], unique: true
  end
end