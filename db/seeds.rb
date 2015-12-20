# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create! [
	{name: "Mo'men Adel", email: "mouemened@gmail.com", password: "1234", gender: "Male"},
	{name: "mo2men", email: "mo2men@gmail.com", password: "1234", gender: "Male"}
]