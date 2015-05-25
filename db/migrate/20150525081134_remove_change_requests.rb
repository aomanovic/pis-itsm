class RemoveChangeRequests < ActiveRecord::Migration
  def change
    drop_table :change_requests
  end
end
