class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :name
      t.text :description
      t.integer :possibility
      t.references :it_process, index: true

      t.timestamps null: false
    end
    add_foreign_key :risks, :it_processes
  end
end
