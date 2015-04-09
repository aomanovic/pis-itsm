class Change < ActiveRecord::Base
  attr_accessor :plan, :change_request_id
  # belongs_to :change_request
  belongs_to :ch_req, :foreign_key => 'change_request_id', :class_name => "ChangeRequest"
end
