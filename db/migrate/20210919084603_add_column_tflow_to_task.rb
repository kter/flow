class AddColumnTflowToTask < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :tflow, null: false, foreign_key: true
  end
end
