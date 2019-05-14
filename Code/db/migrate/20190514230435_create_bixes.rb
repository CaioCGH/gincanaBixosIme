class CreateBixes < ActiveRecord::Migration[5.2]
  def change
    create_table :bixes do |t|
      t.string :name
      t.string :telephone
      t.string :course
      t.string :tutor
      t.string :sports

      t.timestamps
    end
  end
end
