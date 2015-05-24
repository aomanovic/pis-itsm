class RemoveRisks < ActiveRecord::Migration
  def change
    drop_table :risks
  end
end
