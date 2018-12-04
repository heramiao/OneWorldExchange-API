# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User

User.create(first_name: "Hera", last_name: "Miao", email: "heram@andrew.cmu.edu", phone: "6308903971", password: "password", base_currency: "USD", password_confirmation: "password")
User.create(first_name: "Amanda", last_name: "Stiegal", email: "astiegal@gmail.com", phone: "0123456789", password: "password", base_currency: "USD", password_confirmation: "password")
User.create(first_name: "Ellie", last_name: "Walstad", email: "ewalstad@andrew.cmu.edu", phone: "1234567890", password: "password", base_currency: "USD", password_confirmation: "password")
User.create(first_name: "Hannah", last_name: "Jenkins", email: "hjenkinsgmail.com", phone: "1029384756", password: "password", base_currency: "USD", password_confirmation: "password")
User.create(first_name: "Katie", last_name: "Armstrong", email: "katiearmstrong@gmail.com", phone: "6758493021", password: "password", base_currency: "USD", password_confirmation: "password")


# Group
TravelGroup.create(trip_name: "European Backpacking", start_date: "2018-11-11", end_date: "2018-11-15")
TravelGroup.create(trip_name: "Tokyo Adventures", start_date: "2018-12-15", end_date: "2018-12-31")
TravelGroup.create(trip_name: "Hawaii Trip", start_date: "2018-12-25", end_date: "2019-01-11")


# Group Member
GroupMember.create(travel_group_id: 1, user_id:1)
GroupMember.create(travel_group_id: 1, user_id:2)
GroupMember.create(travel_group_id: 1, user_id:3)
GroupMember.create(travel_group_id: 1, user_id:4)
GroupMember.create(travel_group_id: 1, user_id:5)
