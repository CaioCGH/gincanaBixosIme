class CreateBixes < ActiveRecord::Migration[5.2]
  def change
    create_table :bixes do |t|
      t.string :name
      t.string :telephone
      t.string :course
      t.boolean :tutor
      t.boolean :is_valid

      t.timestamps
    end
  end
end
