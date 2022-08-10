class Like < ApplicationRecord
  validates :user_id , uniqueness: { scope: :tweeet_id }
  belongs_to :tweeet
  belongs_to :user
end
