class Workout < ApplicationRecord
  validates_presence_of :name, :frequency
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  belongs_to :player
end
