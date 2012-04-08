class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :file_name
      t.has_attached_file :cover

      t.timestamps
    end
  end
end
