class Exercise < ApplicationRecord
  validates_presence_of :name, :type, :num_sets, :num_reps,
  :description
  has_many :workexs
  has_many :workouts, through: :workexs
end
