# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name,
            presence: true
  # validates_uniqueness_of :name
end
