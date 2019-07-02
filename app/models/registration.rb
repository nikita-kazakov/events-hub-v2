class Registration < ApplicationRecord
  belongs_to :event

  HOW_HEARD = ["Reddit", "Google", "Friend", "Meetup", "Other"]

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }


  validates :how_heard, inclusion: {
      in: HOW_HEARD,
      message: "Pick a valid option."
  }

end
