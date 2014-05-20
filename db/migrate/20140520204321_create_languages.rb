class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :abbreviation
      t.string :full
      t.string :flag
    end
    add_index :languages, ["abbreviation"], :unique => true
  end
end
