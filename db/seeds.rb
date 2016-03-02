# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rescue.create! name:"Fearless Kitty Rescue"
Animal.create! name:  "Koni", rescue_id: 1
Animal.create! name:  "Molly", rescue_id: 1
Animal.create! name:  "Aspen", rescue_id: 1, sex: 'male', dob: 11/04/1967, breed: 'dog'
Animal.create! name: "Douglas", rescue_id: 1, sex: "Male", dob: 04/22/1983, breed: 'cat'
