class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.text :steps
      t.text :estimation
      t.references :risk, index: true

      t.timestamps null: false
    end
    add_foreign_key :plans, :risks
  end
end
