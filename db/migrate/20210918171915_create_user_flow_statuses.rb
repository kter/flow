class CreateUserFlowStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_flow_statuses do |t|
      t.recerence :user
      t.reference :tflow
      t.reference :task

      t.timestamps
    end
  end
end
