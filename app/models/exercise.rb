class Exercise < ApplicationRecord
  validates_presence_of :name, :type, :num_sets, :num_reps,
  :description
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
end
