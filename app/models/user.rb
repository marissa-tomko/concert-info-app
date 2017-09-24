require 'bcrypt'

class User < ApplicationRecord
  has_secure_password

  has_many :attendances, foreign_key: :attendee_id
  has_many :concerts, through: :attendances, source: :concert

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
