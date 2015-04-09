class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.string :plan
      t.integer :change_request
      t.text :comment

      t.timestamps null: false
    end
  end
end
