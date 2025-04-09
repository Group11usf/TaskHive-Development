class Task < ApplicationRecord
    # we can add validations or other logic here if needed
    belongs_to :user

    validates :title, presence: true
    validates :due_date, presence: true
end
  