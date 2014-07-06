class CreateCorrectUsages < ActiveRecord::Migration
  def change
    create_table :correct_usages do |t|
      t.text :usage, :default => ""
      t.integer :word_id, :null => false
      t.timestamps
    end
    add_index :correct_usages, :word_id
  end
end
