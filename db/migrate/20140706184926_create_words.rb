class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name, :null => false, :default => ""
      t.integer :user_id, :null => false
      t.integer :word_language_id
      t.timestamps
    end
    add_index :words, :name
  end
end
