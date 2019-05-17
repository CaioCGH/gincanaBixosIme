class CreateRelProfUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :rel_prof_users do |t|
      t.references :profile, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :rel_prof_users, [:profile, :user_id], unique: true
  end
end
