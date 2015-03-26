class CreateSoftwareElements < ActiveRecord::Migration
  def change
    create_table :software_elements do |t|
      t.integer :code
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
