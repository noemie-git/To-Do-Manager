class ChangeCompletedInTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :completed, :boolean, default: true
  end
end
