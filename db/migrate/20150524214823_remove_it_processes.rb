class RemoveItProcesses < ActiveRecord::Migration
  def change
    drop_table :it_processes
  end
end
