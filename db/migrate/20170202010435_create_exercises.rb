class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :numsets, null: false
      t.string :numreps, null: false
      t.string :equipment, null: false
      t.string :photo
      t.string :video

      t.timestamps
    end
  end
end
