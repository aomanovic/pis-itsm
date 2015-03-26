class AddIndexToHardwareElementsCode < ActiveRecord::Migration
  def change
    add_index :hardware_elements, :code, unique: true
  end
end
