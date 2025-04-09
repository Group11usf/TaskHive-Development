class AddTaskStatusToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :task_status, :string

    add_check_constraint :tasks, "task_status IN ('Completed', 'Working', 'Not Started')", name: "task_status_check"
  end
end
