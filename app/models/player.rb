class Player < ApplicationRecord
  validates_presence_of :firstname, :lastname, :player
  has_many :workouts
  belongs_to :team
end
