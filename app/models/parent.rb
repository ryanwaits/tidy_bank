class Parent < ActiveRecord::Base
  has_many :children, dependent: :destroy

  # downcase email before persisting to database
  before_save { self.email = self.email.downcase }

  validates :first_name, :email, :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  
  # adds methods to set and authenticate against bcrypt password
  has_secure_password

end