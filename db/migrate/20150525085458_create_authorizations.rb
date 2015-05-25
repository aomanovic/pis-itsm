class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.references :user, index: true
      t.references :change_request, index: true
      t.boolean :authorized
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :authorizations, :users
    add_foreign_key :authorizations, :change_requests
  end
end
