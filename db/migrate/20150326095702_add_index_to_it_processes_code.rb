class AddIndexToItProcessesCode < ActiveRecord::Migration
  def change
    add_index :it_processes, :code, unique: true
  end
end
