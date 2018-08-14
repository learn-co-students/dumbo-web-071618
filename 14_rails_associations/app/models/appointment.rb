class Appointment < ApplicationRecord
  belongs_to :doctor

  # Checks if the date is present
  validates :date, presence: true
end
