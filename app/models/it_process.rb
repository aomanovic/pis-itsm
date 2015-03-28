class ItProcess < ActiveRecord::Base
  has_many :hardware_elements
  has_many :software_elements
  has_many :risks
  validates :name, presence: true, length: {maximum: 50}
  validates :code, presence: true, uniqueness: true
end
