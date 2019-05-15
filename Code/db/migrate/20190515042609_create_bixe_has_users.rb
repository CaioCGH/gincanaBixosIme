class CreateBixeHasUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :bixe_has_users do |t|
      t.references :bixe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :bixe_has_users, [:bixe_id, :user_id], unique: true
  end
end
