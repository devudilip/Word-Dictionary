class CreateWordLanguages < ActiveRecord::Migration
  def change
    create_table :word_languages do |t|
      t.string :name, :null => false
      t.string :language_code , :null => false
      t.timestamps
    end
    add_index :word_languages, :name
    add_index :word_languages, :language_code
  end
end
