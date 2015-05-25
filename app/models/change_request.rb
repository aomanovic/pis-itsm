class ChangeRequest < ActiveRecord::Base
  belongs_to :user
  has_many :authorizations
  has_many :change_evaluations

end
