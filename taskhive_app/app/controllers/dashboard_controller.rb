
class DashboardController < ApplicationController
  before_action :authenticated?

  def show
    @tasks = current_user.tasks
                         .where(due_date: Date.today..1.week.from_now)
                         .where.not(task_status: 'Completed')
                         .order(:due_date)
  end
end