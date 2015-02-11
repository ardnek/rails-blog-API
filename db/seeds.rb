# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Post.create([
#   {title: "A", body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
#   {title: "B", body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
#   {title: "C", body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}
# ])

User.delete_all
Comment.delete_all
Post.delete_all

user1 = User.create!( name: Faker::Name.name )
user2 = User.create!( name: Faker::Name.name )
user3 = User.create!( name: Faker::Name.name )

post1 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user1
)

post2 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user1
)

post3 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user2
)

Comment.create!(
  user: user3,
  post: post1,
  body: Faker::Lorem.paragraph
)

Comment.create!(
  user: user2,
  post: post1,
  body: Faker::Lorem.paragraph
)

Comment.create!(
  user: user1,
  post: post3,
  body: Faker::Lorem.paragraph
)
