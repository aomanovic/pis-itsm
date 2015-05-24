class CreateItProcesses < ActiveRecord::Migration
  def change
    create_table :it_processes do |t|
      t.string :name
      t.text :description
      t.integer :importance
      t.references :business_process, index: true

      t.timestamps null: false
    end
    add_foreign_key :it_processes, :business_processes
  end
end
