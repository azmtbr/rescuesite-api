class User < ActiveRecord::Base
  belongs_to :rescue

  before_save { self.email = email.downcase }

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true

  has_secure_password

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :email,
            presence: true,
            uniqueness: { case_sensetive: false },
            length: { minimum: 3, maximum: 254 },
            format: EMAIL_REGEX

end
