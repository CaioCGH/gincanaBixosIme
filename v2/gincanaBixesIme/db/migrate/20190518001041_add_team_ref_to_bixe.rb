class AddTeamRefToBixe < ActiveRecord::Migration[5.2]
  def change
    add_reference :bixes, :team, foreign_key: true
  end
end
