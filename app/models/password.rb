class Password < ApplicationRecord
  has_many :user_passwords
  has_many :user, through: :user_password
send
