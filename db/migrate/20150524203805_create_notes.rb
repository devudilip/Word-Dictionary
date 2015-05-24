class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :notes
      t.integer :word_id, :null => false
      t.timestamps
    end
  end
end
