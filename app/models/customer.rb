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

class Customer < ActiveRecord::Base
  has_many :performances

  validates :name, presence: true, length: {maximum: 30}
  validates :surname, presence: true, length: {maximum: 30}

  def as_json(options = {})
    super(options.merge(
                     except: [:created_at, :updated_at],
                     include: [
                         performances: {
                             include: [:service],
                             except: [:service_id, :customer_id, :created_at, :updated_at]
                         }
                     ]
    ))
  end

  def to_s
    "#{name} #{surname}"
  end
end
