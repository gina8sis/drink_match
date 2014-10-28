# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Drink.delete_all
require 'csv'


CSV.foreach('./list.csv') do |csv|
  puts csv.inspect

  unless Drink.find_by(:name => csv[0])
   d = Drink.new(
    name: csv[0],
    description: "#{csv[1]}. Garnish with #{csv[7]}",
    recipe: { :base => csv[2], :sweet => csv[3], :acid => csv[4], :bitter => csv[5], :dillution => csv[6] } )
   d.save!
  end

end



