# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User

User.create(first_name: "Hera", last_name: "Miao", email: "heram@andrew.cmu.edu", phone: "630-890-3971", base_currency: "USD", balance: 57.39, token_id: "eyJhbGciOiJSUzI1NiIsImtpZCI6ImE0MzEzZTdmZDFlOWUyYTRkZWQzYjI5MmQyYTdmNGU1MTk1NzQzMDgiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI1MjY1OTMwODg3ODgtNmFpbHFuYWVyYWR0OHB2c21taXFxY2EzNTVlNWVzazEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI1MjY1OTMwODg3ODgtNmFpbHFuYWVyYWR0OHB2c21taXFxY2EzNTVlNWVzazEuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDA4MTcyMzE2MDc3NDk4ODk1NjEiLCJlbWFpbCI6ImhlcmFtaWFvQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiTGJidmhMOERxX1F4c01XRmdGeEpOQSIsIm5hbWUiOiJIZXJhIE1pYW8iLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1JNnJNQmNxeEoydy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BQ0hpM3JjNEdZMUF2VkNmN3l5bTl0c0FwLWhXT2Zfei1BL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJIZXJhIiwiZmFtaWx5X25hbWUiOiJNaWFvIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1NTQyMjM0NTQsImV4cCI6MTU1NDIyNzA1NH0.Slw8xHVxHTtMGZk1bijs1hc2W6Y1BKXHhS3sc98bsAILtJEFCA5Z-orMTpf7wmIAMK4--I146Jz_uf7Gm1lYcvYwWWu70aZ4qX_N_pLTTzi1CIs_MNj_H8gA6xHlOmM_95K3CKpxvvG1KEM0XPjKb-gqaeIZvtwbfb0R_1q3AUf1c6riwrD-sADd7Jrx7dKVVMIIgN5AGiQaFL3rbuO4VR8BWOG_CHmcAtbFnMD3Z5PsKOC5XQ-k8j-cptlgDyotRpUrOt4U59ev4qoWO5yGd_KawVr5_1pmx0-6FtUCGiSolVTQI_mWkqmIRzUzhEkEt28JcNhBebd9BuIOk4qFiA")

# User.create(first_name: "Katie", last_name: "Armstrong", email: "katiearmstrong@gmail.com", phone: "6758493021", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)
# User.create(first_name: "Winston", last_name: "Chu", email: "wpchu@andrew.cmu.edu", phone: "3940587610", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)
# User.create(first_name: "Hannah", last_name: "Jenkins", email: "hjenkins@gmail.com", phone: "1029384756", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)
# User.create(first_name: "Jack", last_name: "Lance", email: "jackl@andrew.cmu.edu", phone: "6218496098", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)
# User.create(first_name: "Roy", last_name: "Miao", email: "roymiao@gmail.com", phone: "6301829406", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)
# User.create(first_name: "Amanda", last_name: "Stiegal", email: "astiegal@gmail.com", phone: "0123456789", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)
# User.create(first_name: "Ellie", last_name: "Walstad", email: "ewalstad@andrew.cmu.edu", phone: "1234567890", password: "password", base_currency: "USD", password_confirmation: "password", balance: 57.39)

# Group
TravelGroup.create(trip_name: "European Backpacking", start_date: "2018-12-04", end_date: "2018-12-31")
TravelGroup.create(trip_name: "Tokyo Adventures", start_date: "2018-11-11", end_date: "2018-11-22")
TravelGroup.create(trip_name: "Hawaii Trip", start_date: "2018-07-04", end_date: "2019-07-15")


# Group Member
GroupMember.create(travel_group_id: 1, user_id:1)
GroupMember.create(travel_group_id: 1, user_id:2)
GroupMember.create(travel_group_id: 1, user_id:4)
GroupMember.create(travel_group_id: 1, user_id:7)
