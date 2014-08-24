# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Creature.create({name: "Luke", description: "Jedi"}) 
# Creature.create({name: "Darth Vader", description: "Father of Luke"}) 

User.create({first_name: "Lisa", last_name: "Vogt", email: "lisavogt.sf@gmail.com"})
User.create({first_name: "Jesse", last_name: "Moore", email: "moore.jesseb@gmail.com"})
