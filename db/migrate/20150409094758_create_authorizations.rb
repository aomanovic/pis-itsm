class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.integer :user_id
      t.integer :change_request_id
      t.boolean :authorized
      t.text :comment

      t.timestamps null: false
    end
  end
end
