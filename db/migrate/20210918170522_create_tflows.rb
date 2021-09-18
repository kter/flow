class CreateTflows < ActiveRecord::Migration[6.1]
  def change
    create_table :tflows do |t|
      t.string :name
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
