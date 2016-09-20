# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string
#  surname    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :customer do
    name "MyString"
    surname "MyString"
  end
end
