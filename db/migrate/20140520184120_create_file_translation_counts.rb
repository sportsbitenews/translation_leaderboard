class CreateFileTranslationCounts < ActiveRecord::Migration
  def change
    create_table :file_translation_counts, {:id => false} do |t|
      t.string :file_name
      t.string :language
      t.integer :count, default: 0
    end
    add_index :file_translation_counts, ["file_name", "language"], :unique => true
  end
end
