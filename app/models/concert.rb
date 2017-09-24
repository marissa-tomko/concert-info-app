class Concert < ApplicationRecord
  has_many :attendances
  has_many :attendees, class_name: 'User', through: :attendances, source: :attendee

  validates :band, :venue, presence: true
end
