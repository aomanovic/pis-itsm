class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :naziv
      t.string :opis
      t.string :kategorija
      t.integer :prioritet

      t.timestamps null: false
    end
  end
end
