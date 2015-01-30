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
khorshid = User.create(name: "Khorshid", email: "krahmaninejad2015@kellogg.northwestern.edu", password: "codered")
kevin = User.create(name: "Kevin", email: "kchao2015@kellogg.northwestern.edu", password: "codeblue")
lucy = User.create(name: "Lucy", email: "lcheng2015@kellogg.northwestern.edu", password: "codeorange")

puts "Creating trips..."
greece = Trip.create(name: "Greece 2015")
argentina = Trip.create(name: "Argentina Spring Break")
thailand = Trip.create(name: "Thailand 2015")

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