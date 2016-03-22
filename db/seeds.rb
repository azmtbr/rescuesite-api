# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rescue.create! name:"Fearless Kitty Rescue", email:"fearless@email.com"
Rescue.create! name:"Foothills", email:"foothills@email.com"
Animal.create name:  "Koni", rescue_id: 1, sex: 'female', dob: 11/04/1967, breed: 'dog', gallery: 1
Animal.create! name:  "Molly", rescue_id: 1, sex: 'female', dob: 11/04/1967, breed: 'dog', gallery: 2
Animal.create! name:  "Aspen", rescue_id: 1, sex: 'male', dob: 11/04/1967, breed: 'dog', gallery: 3
Adoption.create! animal: Animal.first, rescue_id: 1, first_name: "Matt", last_name: "Thompson", email: "matt@example.org"
Adoption.create! animal: Animal.last, rescue_id: 1, first_name: "Jon", last_name: "Clarkson", email: "jon@example.org"
