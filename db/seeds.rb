# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User

User.create(first_name: "Ashvin", last_name: "Niruttan", email: "anirutta@andrew.cmu.edu", phone: "4125396846", password: "password", base_currency: "USD", password_confirmation: "password")


# Group
TravelGroup.create(trip_name: "Hawaii", start_date: "2018-11-11", end_date: "2018-11-15")


# Group Member
GroupMember.create(travel_group_id: 1, user_id:1)
