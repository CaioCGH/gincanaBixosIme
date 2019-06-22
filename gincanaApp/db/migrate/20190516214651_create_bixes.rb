class CreateBixes < ActiveRecord::Migration[5.2]
  def change
    create_table :bixes do |t|
      t.string      :name
      t.string      :telephone
      t.boolean     :tutor
      t.boolean     :is_valid
      t.references  :course, foreign_key: true

      t.timestamps
    end
  end
end
