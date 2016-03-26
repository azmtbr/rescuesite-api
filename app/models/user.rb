class User < ActiveRecord::Base
  belongs_to :rescue

  before_save { self.email = email.downcase }

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true

  validates :email,
            presence: true,
            uniqueness: { case_sensetive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
end