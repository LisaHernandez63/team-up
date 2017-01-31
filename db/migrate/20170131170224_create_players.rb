class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.boolean :player, null: false
      t.string :position
      t.string :photo
      t.string :video
      t.string :fav_pregame_meal
      t.string :fav_pregame_drink
      t.belongs_to :team, null: false 

      t.timestamps
    end
  end
end
