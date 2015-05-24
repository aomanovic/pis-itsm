class CreateIstrazivanjes < ActiveRecord::Migration
  def change
    create_table :istrazivanjes do |t|
      t.string :klasa
      t.text :komentar
      t.boolean :potreban_zahtjev
      t.references :problem, index: true

      t.timestamps null: false
    end
    add_foreign_key :istrazivanjes, :problems
  end
end
