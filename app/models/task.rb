class Task < ActiveRecord::Base
  belongs_to :child

  validates :description, :price, :completed, presence: true

  # return all completed Tasks
  def self.completed
    where(completed: true)
  end
end