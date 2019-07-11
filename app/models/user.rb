class User < ApplicationRecord
  has_secure_password
  has_many :registrations, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: {case_sensitive: false}
  validates :username, presence: true,
            format: /\A[A-Z0-9]+\z/i,
            uniqueness: { case_sensitive: false }

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end

end
