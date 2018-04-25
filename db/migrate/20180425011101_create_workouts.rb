class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :workout_type
      t.string :exercises
      t.string :experience
      t.timestamps
    end
  end
end
