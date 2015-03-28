class Risk < ActiveRecord::Base
  belongs_to :it_processes
  has_one :plan
  has_many :incidents
end
