class ChangeEvaluation < ActiveRecord::Base
  attr_accessor :change_request_id
  #  belongs_to :change_request
  belongs_to :request, :foreign_key => 'change_request_id', :class_name => "ChangeRequest"
end
