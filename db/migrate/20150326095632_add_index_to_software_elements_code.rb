class AddIndexToSoftwareElementsCode < ActiveRecord::Migration
  def change
    add_index :software_elements, :code, unique: true
  end
end
