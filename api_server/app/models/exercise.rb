# == Schema Information
#
# Table name: exercises
#
#  id         :bigint           not null, primary key
#  workout_id :bigint           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_exercises_on_workout_id  (workout_id)
#
# Foreign Keys
#
#  fk_rails_...  (workout_id => workouts.id)
#
class Exercise < ApplicationRecord
  belongs_to :workout
end
