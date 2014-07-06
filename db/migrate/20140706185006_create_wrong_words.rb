class CreateWrongWords < ActiveRecord::Migration
  def change
    create_table :wrong_words do |t|
      t.string :name, :default => ""
      t.integer :word_id, :null => false
      t.integer :word_language_id
      t.timestamps
    end
    add_index :wrong_words, :name
    add_index :wrong_words, :word_id
    add_index :wrong_words, :word_language_id
  end
end
