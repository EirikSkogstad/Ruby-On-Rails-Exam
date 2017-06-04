class User < ApplicationRecord
  validates :username, :password_digest, presence: true
  validates :username, uniqueness: true
  validates :username, length: {minimum: 3, maximum: 45}
  #make sure ONLY lower case is accepted
  validates :username, format: {with: /\A[a-z0-9]+\z/, :message => ' cannot be uppercase, and must contains letters from a-z and/or numbers'}
  validates :password, length: {minimum: 8, maximum: 50}

  has_secure_password

end
