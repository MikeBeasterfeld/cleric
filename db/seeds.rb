# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Admin', email: 'admin@example.com', password: 'clericadmin', admin: true)

Itunescategory.create(category: 'Arts', subcategory: 'Design')
Itunescategory.create(category: 'Arts', subcategory: 'Fashion & Beauty')
Itunescategory.create(category: 'Arts', subcategory: 'Food')
Itunescategory.create(category: 'Arts', subcategory: 'Literature')
Itunescategory.create(category: 'Arts', subcategory: 'Performing Arts')
Itunescategory.create(category: 'Arts', subcategory: 'Visual Arts')

Itunescategory.create(category: 'Business', subcategory: 'Business News')
Itunescategory.create(category: 'Business', subcategory: 'Careers')
Itunescategory.create(category: 'Business', subcategory: 'Investing')
Itunescategory.create(category: 'Business', subcategory: 'Management & Marketing')
Itunescategory.create(category: 'Business', subcategory: 'Shopping')

Itunescategory.create(category: 'Comedy')

Itunescategory.create(category: 'Education', subcategory: 'Education')
Itunescategory.create(category: 'Education', subcategory: 'Education Technology')
Itunescategory.create(category: 'Education', subcategory: 'Higher Education')
Itunescategory.create(category: 'Education', subcategory: 'K-12')
Itunescategory.create(category: 'Education', subcategory: 'Language Courses')
Itunescategory.create(category: 'Education', subcategory: 'Training')

Itunescategory.create(category: 'Games & Hobbies', subcategory: 'Automotive')
Itunescategory.create(category: 'Games & Hobbies', subcategory: 'Aviation')
Itunescategory.create(category: 'Games & Hobbies', subcategory: 'Hobbies')
Itunescategory.create(category: 'Games & Hobbies', subcategory: 'Other Games')
Itunescategory.create(category: 'Games & Hobbies', subcategory: 'Video Games')

Itunescategory.create(category: 'Government & Organizations', subcategory: 'Local')
Itunescategory.create(category: 'Government & Organizations', subcategory: 'National')
Itunescategory.create(category: 'Government & Organizations', subcategory: 'Non-Profit')
Itunescategory.create(category: 'Government & Organizations', subcategory: 'Regional')

Itunescategory.create(category: 'Health', subcategory: 'Alternative Health')
Itunescategory.create(category: 'Health', subcategory: 'Fitness & Nutrition')
Itunescategory.create(category: 'Health', subcategory: 'Self-Help')
Itunescategory.create(category: 'Health', subcategory: 'Sexuality')

Itunescategory.create(category: 'Kids & Family')

Itunescategory.create(category: 'Music')

Itunescategory.create(category: 'News & Politics')

Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Buddhism')
Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Christianity')
Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Hinduism')
Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Islam')
Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Judaism')
Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Other')
Itunescategory.create(category: 'Religion & Spirituality', subcategory: 'Spirituality')

Itunescategory.create(category: 'Science & Medicine', subcategory: 'Medicine')
Itunescategory.create(category: 'Science & Medicine', subcategory: 'Natural Sciences')
Itunescategory.create(category: 'Science & Medicine', subcategory: 'Social Sciences')

Itunescategory.create(category: 'Sports & Recreation', subcategory: 'Amateur')
Itunescategory.create(category: 'Sports & Recreation', subcategory: 'College & High School')
Itunescategory.create(category: 'Sports & Recreation', subcategory: 'Outdoor')
Itunescategory.create(category: 'Sports & Recreation', subcategory: 'Professional')

Itunescategory.create(category: 'Technology', subcategory: 'Gadgets')
Itunescategory.create(category: 'Technology', subcategory: 'Tech News')
Itunescategory.create(category: 'Technology', subcategory: 'Podcasting')
Itunescategory.create(category: 'Technology', subcategory: 'Software How-To')

Itunescategory.create(category: 'TV & Film')

