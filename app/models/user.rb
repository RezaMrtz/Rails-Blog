class User < ApplicationRecord
  # Associations
  has_many :comments
  # This means all the article's of user should be deleted on destroy actions 
  has_many :articles, dependent: :destroy 
  # Before save
  before_save { self.email = email.downcase }
  # Validations
  has_secure_password
  validates :username,
            presence: true,
            length: { minimum: 3, maximum: 25 },
            uniqueness: { case_sensitive: false }

  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP }
end
