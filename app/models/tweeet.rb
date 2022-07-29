class Tweeet < ApplicationRecord
  validates :tweeet , presence: true
  belongs_to :user
  has_many :likes
end
