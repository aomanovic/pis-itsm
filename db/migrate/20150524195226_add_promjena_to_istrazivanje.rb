class AddPromjenaToIstrazivanje < ActiveRecord::Migration
  def change
    add_column :istrazivanjes, :promjena, :string
  end
end
