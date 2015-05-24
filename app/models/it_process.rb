class ItProcess < ActiveRecord::Base
  belongs_to :business_process
  has_many :risks
end
