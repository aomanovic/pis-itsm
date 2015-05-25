class CreateChangeRequests < ActiveRecord::Migration
  def change
    create_table :change_requests do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :change_requests, :users
  end
end
