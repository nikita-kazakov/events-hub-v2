class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user

  HOW_HEARD = ["Reddit", "Google", "Friend", "Meetup", "Other"]


  validates :how_heard, inclusion: {
      in: HOW_HEARD,
      message: "Pick a valid option."
  }

end
