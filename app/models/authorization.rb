class Authorization < ActiveRecord::Base
  attr_accessor :user_id, :change_request_id
  # belongs_to :change_request
  belongs_to :ch_reqest, :foreign_key => 'change_request_id', :class_name => "ChangeRequest"
  #belongs_to :user
  belongs_to :korisnik, :foreign_key => 'user_id', :class_name => "User"
end
