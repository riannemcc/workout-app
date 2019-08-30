class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :type
      t.string :timing
      t.string :equipment

      t.timestamps
    end
  end
end
