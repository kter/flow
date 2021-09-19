class CreateUserFlowStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_flow_statuses do |t|
      t.references :user
      t.references :tflow
      t.references :task

      t.timestamps
    end
  end
end
