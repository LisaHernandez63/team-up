class Player < ApplicationRecord
  validates_presence_of :first_name, :last_name
  mount_uploader :photo, ProfilePhotoUploader
  has_many :workouts
  belongs_to :team
  belongs_to :user
end
