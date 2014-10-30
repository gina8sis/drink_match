# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

# Drink.delete_all
# CSV.foreach('./list.csv') do |csv|
#   puts csv.inspect

#   unless Drink.find_by(:name => csv[0])
#    d = Drink.new(
#     name: csv[0],
#     description: "#{csv[1]}. Garnish with #{csv[7]}",
#     recipe: { :base => csv[2], :sweet => csv[3], :acid => csv[4], :bitter => csv[5], :dillution => csv[6] } )
#    d.save!
#   end

# end

# Occasion.delete_all

# CSV.foreach('./occasion.csv') do |csv|
#   # Occasion.create(name: csv[0])
#   o = Occasion.new(name: csv[0]) #new occasion

#   1.upto(csv.size-1) do |col_num|

#     if csv[col_num].present? #if not empty
#       if drink = Drink.find_by(name: csv[col_num]) #if a matching drink is found

#        o.drinks << drink
#       end

#     end
#   end

#   o.save

# end

# Season.delete_all

# CSV.foreach('./season.csv') do |csv|
#   # Occasion.create(name: csv[0])
#   s = Season.new(name: csv[0]) #new season

#   1.upto(csv.size-1) do |col_num|

#     if csv[col_num].present? #if not empty
#       if drink = Drink.find_by(name: csv[col_num]) #if a matching drink is found

#        s.drinks << drink
#       end

#     end
#   end

#   s.save

# end

Flavor.delete_all

CSV.foreach('./flavor.csv') do |csv|
  # Flavor.create(name: csv[0])
  f = Flavor.new(descriptor: csv[0]) #new flavor

  1.upto(csv.size-1) do |col_num|

    if csv[col_num].present? #if not empty
      if drink = Drink.find_by(name: csv[col_num]) #if a matching drink is found

       f.drinks << drink
      end

    end
  end

  f.save

end

