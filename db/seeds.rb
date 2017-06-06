require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 10.times do
    User.create([{
       
        address: Faker::Address.town,
        description: Faker::Lorem.word,
        title: Faker::Lorem.word
    }]) 
 end