class User < ApplicationRecord
  # Associations
  has_many :comments
  has_many :articles
  # Before save
  before_save { self.email = email.downcase }
  # Validations
  validates :username,
            presence: true,
            length: { minimum: 3, maximum: 25 },
            uniqueness: { case_sensitive: false }

  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP }
end
