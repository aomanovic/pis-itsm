class CreateChangeEvaluations < ActiveRecord::Migration
  def change
    create_table :change_evaluations do |t|
      t.integer :rate
      t.text :description
      t.references :change_request, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :change_evaluations, :change_requests
    add_foreign_key :change_evaluations, :users
  end
end
