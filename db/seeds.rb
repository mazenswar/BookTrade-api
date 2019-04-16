# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# books_isbn = [
#   "0026515628"
#   "0030020786"
#   "0030350840"
#   "0070109109"
#   "0070311366"
#   "0070350485"
#   "0070393605"
#   "0070418780"
#   "0072294337"
#   "0072299908"
#   "0072321113"
# ]

Book.destroy_all

bookObj = {
    title: "40,000 Kilometers of Fun",
    authors: "Seann Branchfield",
    publisher: "whoever",
    publishDate: "2010",
    description: "Fun book",
    imageURL: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-flyer-template-6bd8f9188465e443a5e161a7d0b3cf33.jpg?ts=1456287935",
    isbn: "83943803281932",
    book_condition: "Good (G)"
   }


20.times do
  Book.create(bookObj)
end

puts "success!"
