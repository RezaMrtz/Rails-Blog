# frozen_string_literal: true

class Article < ApplicationRecord
  # Associations
  belongs_to :user
  #
  has_many :article_categories
  has_many :categories, through: :article_categories
  #
  # Validations
  validates :title, presence: true, length: { minimum: 3, maximum: 25 }
  validates :body, presence: true, length: { minimum: 15 }
  validates :user_id, presence: true
end
