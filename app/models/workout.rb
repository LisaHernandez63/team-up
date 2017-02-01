class Workout < ApplicationRecord
  validates_presence_of :name, :frequency
  has_many :workexs
  has_many :exercises, through: :workexs
  belongs_to :player
end
