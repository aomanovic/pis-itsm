class RemoveChangeEvaluations < ActiveRecord::Migration
  def change
    drop_table :change_evaluations
  end
end
