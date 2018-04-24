class UpdateUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :strength_goals, :integer
  end
end
