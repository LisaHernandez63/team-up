class Workout < ApplicationRecord
  validates_presence_of :name, :frequency
  has_many :workexes
  has_many :exercises, through: :workexes
  belongs_to :player
end
