# == Schema Information
#
# Table name: exercise_sets
#
#  id          :bigint           not null, primary key
#  exercise_id :bigint           not null
#  weight      :integer          not null
#  rep         :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_exercise_sets_on_exercise_id  (exercise_id)
#
# Foreign Keys
#
#  fk_rails_...  (exercise_id => exercises.id)
#
require 'rails_helper'

RSpec.describe ExerciseSet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
