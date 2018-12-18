class AddLocationToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :location, :string
    add_column :entries, :date, :string
  end
end
