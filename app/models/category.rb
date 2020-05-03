# frozen_string_literal: true

class Category < ApplicationRecord
  # Associations
  has_many :article_categories
  has_many :articles, through: :article_categories
  #
  validates :name,
            presence: true
  # validates_uniqueness_of :name
end
