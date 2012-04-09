class Book < ActiveRecord::Base
  attr_accessible :author, :description, :file_name, :title, :genre_id, :cover, :cover_file_name, :cover_file_size, :cover_content_type, :cover_updated_at
  paginates_per 50
  belongs_to :genre
  has_attached_file :cover, :styles => { :medium => "150x200>", :thumb => "60x80>" }
  acts_as_commentable
end
