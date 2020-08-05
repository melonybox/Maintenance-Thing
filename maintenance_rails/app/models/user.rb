class User < ApplicationRecord
  has_secure_password
  self.implicit_order_column = "created_at"

  validates :email, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
  validates :username, presence: true
  validates :password, presence: true

  has_many :items
  has_many :alerts, through: :items
end
