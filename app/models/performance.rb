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

class Performance < ActiveRecord::Base
  belongs_to :customer
  belongs_to :service

  validates :customer_id, presence: true
  validates :service_id, presence: true
  validates :date, presence: true
  validates :notes, length: {maximum: 200}

  def as_json(options = {})
    super(options.merge(
                     except: [:service_id, :customer_id, :created_at, :updated_at],
                     include: [:service, :customer]
    ))
  end
end
