class Team < ApplicationRecord
  validates_presence_of :teamname, :coach, :schoolname, :streetaddress, :town, :state, :zip
  has_many :players
end
