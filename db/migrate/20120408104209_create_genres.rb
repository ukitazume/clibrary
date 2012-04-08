class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end
    add_column :books, :genre_id, :integer
    add_index :books, [:genre_id]
  end
end
