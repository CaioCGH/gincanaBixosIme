class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.numeric :score
      t.numeric :placement

      t.timestamps
    end
  end
end
