class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :name
      t.string :description
      t.integer :possibility
      t.integer :it_process

      t.timestamps null: false
    end
  end
end
