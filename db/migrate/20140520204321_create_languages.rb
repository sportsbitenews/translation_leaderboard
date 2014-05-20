class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :abbreviation
      t.string :full
      t.string :flag

      t.timestamps
    end
  end
end
