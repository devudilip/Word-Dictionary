class CreateWordTranslations < ActiveRecord::Migration
  def change
    create_table :word_translations do |t|
      t.string :name
      t.integer :word_id, :null => false
      t.integer :word_language_id, :null => false
      t.timestamps
    end
  end
end
