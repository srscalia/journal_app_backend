class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :journal_id
      t.string :title
      t.string :body
      t.string :photo

      t.timestamps
    end
  end
end
