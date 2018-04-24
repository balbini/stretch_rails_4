class UpdateUser3 < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :strength_goals, :string
    add_column :users, :cardio_goals, :string
  end
end
