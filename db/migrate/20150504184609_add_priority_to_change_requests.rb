class AddPriorityToChangeRequests < ActiveRecord::Migration
  def change
    add_column :change_requests, :priority, :string
  end
end
