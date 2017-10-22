# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def self.country_list
  JSON.parse File.open(File.join(Rails.root, 'app/assets/javascripts', 'countries.json')).read
end

def self.idiom_list
  JSON.parse File.open(File.join(Rails.root, 'app/assets/javascripts', 'idioms.json')).read
end

country_list.each do |name, flag|
  Country.create( name: name, flag: flag )
end

idiom_list.each do |name|
  Idiom.create( name: name)
end