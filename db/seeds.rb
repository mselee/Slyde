# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Document.destroy_all
Slide.destroy_all
Comment.destroy_all

User.create! [
	{name: "Mo'men Adel", email: "mouemened@gmail.com", password: "1234", age: 22, gender: "Male"},
	{name: "mo2men", email: "mo2men@gmail.com", password: "1234", age: 22, gender: "Male"}
]

user = User.create(name: "seleem", email: "seleem", password: "seleem", age: 0, gender: "Male")
user = User.create(name: "ezz", email: "ezz", password: "ezz", age: 0, gender: "Male")

doc = Document.create(name: "doc1", file_path: "doc_path", user_id: user.id)
Slide.create(file_path: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png", number: 1, document_id: doc.id)
Slide.create(file_path: "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png", number: 2, document_id: doc.id)
