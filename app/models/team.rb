class Team < ApplicationRecord
  validates_presence_of :teamname, :coach, :schoolname, :streetaddress, :town, :state, :zip
  mount_uploader :profile_photo, ProfilePhotoUploader
  has_many :players
  belongs_to :user
end
