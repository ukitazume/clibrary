class Book < ActiveRecord::Base
  attr_accessible :author, :description, :file_name, :title
end
