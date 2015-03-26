class ItProcess < ActiveRecord::Base
  belongs_to :user
  has_many :hardware_elements
  has_many :software_elements
  validates :name, presence: true, length: {maximum: 50}
  validates :code, presence: true, uniqueness: true
end
