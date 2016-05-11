class Parent < ActiveRecord::Base
  has_many :children, dependent: :destroy
  before_save { self.email = self.email.downcase }
  validates :first_name, :email, :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
  
  has_secure_password
end