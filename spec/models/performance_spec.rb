# == Schema Information
#
# Table name: performances
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  service_id  :integer
#  date        :date
#  notes       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_performances_on_customer_id  (customer_id)
#  index_performances_on_service_id   (service_id)
#

require 'rails_helper'

RSpec.describe Performance, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
