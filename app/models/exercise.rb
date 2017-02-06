class Exercise < ApplicationRecord
  validates_presence_of :name, :category, :num_sets, :num_reps,
  :description
  has_many :workexes
  has_many :workouts, through: :workexes
end
