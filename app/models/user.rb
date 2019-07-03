class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: {case_sensitive: false}
  validates :username, presence: true,
            format: /\A[A-Z0-9]+\z/i,
            uniqueness: { case_sensitive: false }
  #Error test again

end
