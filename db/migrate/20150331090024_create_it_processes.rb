class CreateItProcesses < ActiveRecord::Migration
  def change
    create_table :it_processes do |t|
      t.string :name
      t.string :description
      t.integer :importance
      t.integer :business_process

      t.timestamps null: false
    end
  end
end
