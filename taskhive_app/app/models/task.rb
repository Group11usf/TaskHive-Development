class Task < ApplicationRecord
    # we can add validations or other logic here if needed
    belongs_to :user

    validates :title, presence: true
    validates :due_date, presence: true


    after_initialize :set_default_status, if: :new_record?

    private
    def set_default_status
      self.task_status ||= 'Not Started'
    end
  end
  