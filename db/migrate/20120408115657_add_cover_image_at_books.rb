class AddCoverImageAtBooks < ActiveRecord::Migration
  def up
    add_column :books, :cover, :has_attached_file
  end

  def down
    remove_column :books, :cover
  end
end
