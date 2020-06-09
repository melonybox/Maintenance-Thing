class User < ApplicationRecord
  has_many :overviews, dependent: :destroy
end
