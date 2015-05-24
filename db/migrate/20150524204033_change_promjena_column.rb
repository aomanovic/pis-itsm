class ChangePromjenaColumn < ActiveRecord::Migration
  def change
    change_column :istrazivanjes, :promjena, :string, :default => 'Default promjena'
  end
end
