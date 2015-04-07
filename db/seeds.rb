# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Project.create name: "John Doe", descriptions: "pizza Pizza"
	Project.create name: "Mr Pink", descriptions: "Why am I Mr Pink??"
	Project.create name: "Osbourn Cox", descriptions: "Lunatics!"

	Project.find(2).entries.create hours: 2, minutes: 31, comments: "You're gonna Mr Pink and you're gonna like it p*ssy Boy", date: Time.now
	Project.find(1).entries.create hours: 1, minutes: 44, comments: "Pizza taste goooooood", date: Time.now - 10.minutes
	Project.find(3).entries.create hours: 2, minutes: 31, comments: "I got the new keys to the house", date: Time.now - 3.hours


