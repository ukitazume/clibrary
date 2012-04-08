# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.open("#{Rails.root}/var/CommonsLibrary5217.csv").each do |row|
  genre = Genre.find_or_initialize_by_name(row[3])
  genre.save

  Book.create({title:row[0], author:row[1], genre_id: genre.id, file_name: row[4].split("/")[-1]})
end

User.create(email:"test@ex.com", password:'test')
