class User < ApplicationRecord
    has_many :comments
    validates :username,
               presence: true,
               length: {minimum:3, maximum:25},
               uniqueness: {case_sensitive: false}

    validates :email,
              format: { with: URI::MailTo::EMAIL_REGEXP } 
end
