class AddDateFinishedToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :date_finished, :datetime
  end
end
