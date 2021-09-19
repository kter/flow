class AddDescriptionToTflow < ActiveRecord::Migration[6.1]
  def change
    add_column :tflows, :description, :text
  end
end
