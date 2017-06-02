class User < ApplicationRecord
  validates :username, :password_digest, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 8, maximum: 50}

  has_secure_password
  before_save :downcase_username
  before_commit :downcase_username
  before_validation :downcase_username
  before_update :downcase_username


  def downcase_username
    self.username.downcase!
  end

end
