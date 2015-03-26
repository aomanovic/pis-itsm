class CreateItProcesses < ActiveRecord::Migration
  def change
    create_table :it_processes do |t|
      t.integer :code
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
