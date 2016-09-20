# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  description :string
#  price       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :service do
    description "MyString"
    price 1.5
  end
end
