class CreateRelUserBixes < ActiveRecord::Migration[5.2]
  def change
    create_table :rel_user_bixes do |t|
      t.references :user, foreign_key: true
      t.references :bixe, foreign_key: true

      t.timestamps
    end
    add_index :rel_user_bixes, [:user_id, :bixe_id], unique: true
  end
end
