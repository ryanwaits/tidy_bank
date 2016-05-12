class Child < ActiveRecord::Base
  belongs_to :parent
  has_many :tasks, dependent: :destroy

  before_save { self.email = self.email.downcase }
  validates :first_name, :email, :password, :password_confirmation, presence: true
  validates :password, length: { minimum: 6 }
  
  has_secure_password

  def self.completed
    joins(:tasks).merge(Task.completed)
  end
end