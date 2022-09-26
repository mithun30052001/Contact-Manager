# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all

contacts =[]

#generate 25 fake data

25.times do |create_record|
  new_contact = {
    id: create_record,
    name: Faker::Name.name,
    email: Faker::Internet.email,
    company: Faker::Company.name,
    address: "#{Faker::Address.street_name} #{Faker::Address.zip} #{Faker::Address.city}",
    phone: Faker::PhoneNumber.cell_phone
  }
  contacts.push(new_contact)
end

Contact.create(contacts)
