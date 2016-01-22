class Child < ActiveRecord::Base
  belongs_to :parent
  belongs_to :balance
  has_many :tasks

  before_save { self.email = self.email.downcase }
  validates :first_name, :email, :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
  
  has_secure_password
end