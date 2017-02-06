class CreateWorkexes < ActiveRecord::Migration[5.0]
  def change
    create_table :workexes do |t|
      t.belongs_to :exercise, null: false
      t.belongs_to :workout, null: false

      t.timestamps
    end
  end
end
