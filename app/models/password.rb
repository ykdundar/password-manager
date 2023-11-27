class Password < ApplicationRecord
  has_many :user_passwords
  has_many :user, through: :user_passwords

  encrypts :password
  encrypts :username, deterministic: true

  validates :username, presence: true
  validates :password, presence: true
  validates :url, presence: true
end
