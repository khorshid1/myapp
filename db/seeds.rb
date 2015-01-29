# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Deleting all records from the database..."
User.delete_all
Trip.delete_all
City.delete_all
Item.delete_all
Pack.delete_all

puts "Creating users..."
raiders = Movie.create(name: "Raiders of the Lost Ark", summary: "Snakes. I hate snakes.", year_released: "1981")
star_wars = Movie.create(name: "Star Wars", summary: "Use the force.", year_released: "1977")
apollo_13 = Movie.create(name: "Apollo 13", summary: "Spoiler alert, we land on the moon.", year_released: "1995")
cast_away = Movie.create(name: "Cast Away", summary: "A man and an island.", year_released: "2000")

puts "Creating trips..."
ford = Actor.create(name: "Harrison Ford")
fisher = Actor.create(name: "Carrie Fisher")
hanks = Actor.create(name: "Tom Hanks")
hunt = Actor.create(name: "Helen Hunt")

puts "Creating cities..."

puts "Creating items..."

puts "Creating packs..."

# Create the roles for Raiders of the Lost Ark
Role.create(movie_id: raiders.id, actor_id: ford.id)

# Create the roles for Star Wars
Role.create(movie_id: star_wars.id, actor_id: ford.id)
Role.create(movie_id: star_wars.id, actor_id: fisher.id)

# Create the roles for Apollo 13
Role.create(movie_id: apollo_13.id, actor_id: hanks.id)

# Create the roles for Cast Away
Role.create(movie_id: cast_away.id, actor_id: hanks.id)
Role.create(movie_id: cast_away.id, actor_id: hunt.id)

puts "There are now #{Movie.count} movies, #{Actor.count} actors, and #{Role.count} roles in the database."