class CreateChangeEvaluations < ActiveRecord::Migration
  def change
    create_table :change_evaluations do |t|
      t.integer :rate
      t.text :description
      t.integer :change_request
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
