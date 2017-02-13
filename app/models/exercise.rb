class Exercise < ApplicationRecord
  validates_presence_of :name, :category, :num_sets, :num_reps,
  :description
  mount_uploader :photo, ProfilePhotoUploader
  has_many :workexes
  has_many :workouts, through: :workexes
  belongs_to :user
end
