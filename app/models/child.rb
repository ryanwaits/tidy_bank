class Child < ActiveRecord::Base
  belongs_to :parent
  has_many :tasks
  
  has_secure_password
end