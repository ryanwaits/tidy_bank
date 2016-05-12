class Task < ActiveRecord::Base
  belongs_to :child

  def self.completed
    where(completed: true)
  end
end