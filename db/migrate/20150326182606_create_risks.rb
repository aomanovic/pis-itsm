class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :name
      t.string :description
      t.integer :priority
      t.string :new

      t.timestamps null: false
    end
  end
end
