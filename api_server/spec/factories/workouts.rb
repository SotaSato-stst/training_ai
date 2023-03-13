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
FactoryBot.define do
  factory :workout do
    user { nil }
    name { "MyString" }
    feedback { "MyText" }
    startDate { "MyString" }
    endDate { "MyString" }
  end
end
