class DropTaskToTflow < ActiveRecord::Migration[6.1]
  def change
    remove_column :tflows, :task_id, :references
  end
end
