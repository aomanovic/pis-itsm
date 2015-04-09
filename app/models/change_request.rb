class ChangeRequest < ActiveRecord::Base
  attr_accessor :name, :user_id
  has_many :change_evaluations
  belongs_to :user_owner, :foreign_key => 'user_id', :class_name => "User"
  has_many :authorizations
  has_many :chs, :foreign_key => 'change_id', :class_name => "Change"
end
