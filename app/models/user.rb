class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105 },
                    format: { with: EMAIL_REGEX }
end
