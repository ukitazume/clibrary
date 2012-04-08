class Book < ActiveRecord::Base
  attr_accessible :author, :description, :file_name, :title, :genre_id
  paginates_per 50
end
