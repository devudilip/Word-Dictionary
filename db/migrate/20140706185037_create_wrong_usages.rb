class CreateWrongUsages < ActiveRecord::Migration
  def change
    create_table :wrong_usages do |t|
     t.text :usage, :default => ""
     t.integer :word_id, :null => false
     t.timestamps
   end
   add_index :wrong_usages, :word_id
 end
end
