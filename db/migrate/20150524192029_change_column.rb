class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :problems, :kategorija, :text
    change_column :problems, :prioritet, :string
  end
end
