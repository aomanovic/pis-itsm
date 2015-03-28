class Incident < ActiveRecord::Base
  belongs_to :user
  belongs_to :risk
end
