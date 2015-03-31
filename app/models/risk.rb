class Risk < ActiveRecord::Base
  belongs_to :it_process
  has_many :incidents
end
