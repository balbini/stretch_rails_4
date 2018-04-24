class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :current_weight
      t.integer :goal_weight
      t.integer :strength_goals
      t.integer :cardio_goals
      t.string :nutrition_goals
      t.string :stretch_goals

      t.timestamps
    end
  end
end
