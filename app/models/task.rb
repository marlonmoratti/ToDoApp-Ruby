class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :due_date, presence: true

  def initialize(attributes = {})
    super
    self.done = false
  end
end
