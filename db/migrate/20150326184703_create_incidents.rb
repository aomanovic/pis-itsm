class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :description
      t.string :user
      t.string :new

      t.timestamps null: false
    end
  end
end
