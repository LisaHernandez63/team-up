class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :teamname, null: false
      t.string :coach, null: false
      t.string :schoolname, null: false
      t.string :streetaddress, null: false
      t.string :town, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :img
      t.text :description
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
