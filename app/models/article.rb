class Article < ApplicationRecord
  # Associations
  belongs_to :user
  # Validations
  validates :title, presence: true, length: { minimum: 3, maximum: 25 }
  validates :body, presence: true, length: { minimum: 15 }
  validates :user_id, presence: true
end
