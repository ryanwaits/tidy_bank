class Child < ActiveRecord::Base
  belongs_to :parent
  has_many :tasks, dependent: :destroy

  # downcase email input before persisting to database
  before_save { self.email = self.email.downcase }

  validates :first_name, :email, :balance, :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  
  # adds methods to set and authenticate against bcrypt password
  has_secure_password

  # return only unique children with completed tasks
  def self.completed
    joins(:tasks).merge(Task.completed).distinct
  end

end