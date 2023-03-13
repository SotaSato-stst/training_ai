class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.text :feedback
      t.string :startDate, null: false
      t.string :endDate, null: false

      t.timestamps
    end
  end
end
