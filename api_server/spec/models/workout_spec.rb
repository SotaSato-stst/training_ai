# == Schema Information
#
# Table name: workouts
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  name       :string           not null
#  feedback   :text
#  startDate  :string           not null
#  endDate    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_workouts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Workout, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
