class Authorization < ActiveRecord::Base
  belongs_to :user
  belongs_to :change_request
end
