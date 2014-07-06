class CreateCorrectWords < ActiveRecord::Migration
  def change
    create_table :correct_words do |t|
      t.string :name, :default => ""
      t.integer :word_id, :null => false
      t.integer :word_language_id
      t.timestamps
    end
    add_index :correct_words, :name
    add_index :correct_words, :word_language_id
    add_index :correct_words, :word_id
  end
end
