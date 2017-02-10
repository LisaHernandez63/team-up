class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :position
      t.string :photo
      t.string :video
      t.string :fav_pregame_meal
      t.string :fav_pregame_drink
      t.belongs_to :team, null: false
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
