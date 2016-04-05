# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rescue.create! name: "Fearless", email:"fearless@email.com", landing_gallery: LandingGallery.new
Rescue.create! name: "Foothills Animal", email:"foothillsanimalrescue@email.com", landing_gallery: LandingGallery.new
User.create! email: "jon@email.com", password: "password", password_confirmation: "password", rescue_id: 1
User.create! email: "me@example.org", password: "password", password_confirmation: "password", rescue_id: 1
Animal.create! name: "Koni", rescue_id: 1, sex: 'female', dob: DateTime.now, breed: 'dog', gallery: Gallery.new
Animal.create! name: "Molly", rescue_id: 1, sex: "female", dob: DateTime.now, breed: "dog", gallery: Gallery.new
Animal.create! name: "Aspen", rescue_id: 1, sex: 'male', dob: DateTime.now, breed: 'dog', gallery: Gallery.new
Adoption.create! animal: Animal.first, rescue_id: 1, first_name: "Matt", last_name: "Thompson", email: "matt@example.org"
Adoption.create! animal: Animal.last, rescue_id: 1, first_name: "Jon", last_name: "Clarkson", email: "jon@example.org"
# Gallery.create! animal_id: 2, id: 4
