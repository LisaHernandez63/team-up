class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :category, null: false
      t.string :num_sets, null: false
      t.string :num_reps, null: false
      t.string :equipment
      t.string :photo
      t.string :video

      t.timestamps
    end
  end
end
