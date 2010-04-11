# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


# Seed discount table
discounts = (0..1).step(0.05).map { |i| i }
discounts.each { |rate| Discount.create(:rate => rate) }

# Seed category table
Category.create(:name => 'Accessories')
Category.create(:name => 'Clothing')
Category.create(:name => 'CD')
Category.create(:name => 'Cassette')
Category.create(:name => 'Vinyl')
Category.create(:name => 'DVD')
Category.create(:name => 'VHS')

# Seed genre table
Genre.create(:name => 'Reggae')
Genre.create(:name => 'Soca')
Genre.create(:name => 'Calypso')

# Seed product table
Product.create(:artist => 'Bob Marley', :title => 'Legend', :description => 'Legend', :price => 10.99, :quantity => 2, :category_id => 3, :genre_id => 1, :photo_id => 1, :discount_id => 3)
Product.create(:artist => 'Bob Marley', :title => 'Kaya', :description => 'Kaya', :price => 13.99, :quantity => 3, :category_id => 3, :genre_id => 1, :photo_id => 1, :discount_id => 5)