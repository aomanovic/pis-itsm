class RemovePlans < ActiveRecord::Migration
  def change
    drop_table :plans
  end
end
