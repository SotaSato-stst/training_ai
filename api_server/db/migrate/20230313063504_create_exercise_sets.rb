class CreateExerciseSets < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_sets do |t|
      t.references :exercise, null: false, foreign_key: true
      t.integer :weight, null: false
      t.integer :rep, null: false

      t.timestamps
    end
  end
end
