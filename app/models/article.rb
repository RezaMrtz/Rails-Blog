class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 12 }
  validates :body, presence: true, length: { minimum: 15, maximum: 30 }
end
