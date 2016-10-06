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

class Service < ActiveRecord::Base
  has_many :performances

  validates :description, presence: true, length: {maximum: 50}
  validates :price, presence: true, numericality: {greater_than: 0}

  def formatted_price
    Money.euro(price * 100).format(thousands_separator: ".", decimal_mark: ",")
  end

  def as_json(options = {})
    super(options.merge(
        :methods => [:formatted_price],
        :include => [
            performances: {
                include: [:customer],
                except: [:service_id, :customer_id, :created_at, :updated_at]
            }
        ],
        :except => [:created_at, :updated_at]
    ))
  end

  def to_s
    "#{description} (#{formatted_price})"
  end
end
