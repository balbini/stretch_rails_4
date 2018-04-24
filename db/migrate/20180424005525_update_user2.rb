class UpdateUser2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :cardio_goals, :integer
  end
end
