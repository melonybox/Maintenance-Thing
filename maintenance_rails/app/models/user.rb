class User < ApplicationRecord
  self.implicit_order_column = "created_at"

  validates :email, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
  validates :name, presence: true

  has_many :items
  has_many :alerts, through: :items
end
